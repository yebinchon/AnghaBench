
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int tf_eip; int tf_ebp; int tf_eax; int tf_trapno; } ;
struct thread {int dummy; } ;
struct i386_frame {scalar_t__ f_frame; int f_retaddr; } ;
typedef int db_expr_t ;
typedef scalar_t__ db_addr_t ;
typedef int c_db_sym_t ;
struct TYPE_2__ {int tss_esp; int tss_eip; int tss_ebp; } ;


 int DB_STGY_ANY ;
 int DOUBLE_FAULT ;

 int NORMAL ;
 TYPE_1__* PCPU_GET (int ) ;
 int PMAP_TRM_MIN_ADDRESS ;


 int TRAPF_USERMODE (struct trapframe*) ;
 int common_tssp ;
 int db_get_value (int,int,int) ;
 int db_print_stack_entry (char const*,int ,int ,int ,int,scalar_t__*) ;
 int db_printf (char*,...) ;
 int db_search_symbol (int,int ,int *) ;
 int db_symbol_values (int ,char const**,int *) ;
 int decode_syscall (int ,struct thread*) ;
 int get_esp (struct trapframe*) ;
 int panic (char*) ;
 int setidt_disp ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void
db_nextframe(struct i386_frame **fp, db_addr_t *ip, struct thread *td)
{
 struct trapframe *tf;
 int frame_type;
 int eip, esp, ebp;
 db_expr_t offset;
 c_db_sym_t sym;
 const char *name;

 eip = db_get_value((int) &(*fp)->f_retaddr, 4, 0);
 ebp = db_get_value((int) &(*fp)->f_frame, 4, 0);
 frame_type = NORMAL;

 if (eip >= PMAP_TRM_MIN_ADDRESS) {
  sym = db_search_symbol(eip - 1 - setidt_disp, DB_STGY_ANY,
      &offset);
 } else {
  sym = db_search_symbol(eip - 1, DB_STGY_ANY, &offset);
 }
 db_symbol_values(sym, &name, ((void*)0));
 if (name != ((void*)0)) {
  if (strcmp(name, "calltrap") == 0 ||
      strcmp(name, "fork_trampoline") == 0)
   frame_type = 128;
  else if (strncmp(name, "Xatpic_intr", 11) == 0 ||
      strncmp(name, "Xapic_isr", 9) == 0) {
   frame_type = 130;
  } else if (strcmp(name, "Xlcall_syscall") == 0 ||
      strcmp(name, "Xint0x80_syscall") == 0)
   frame_type = 129;
  else if (strcmp(name, "dblfault_handler") == 0)
   frame_type = DOUBLE_FAULT;
  else if (strcmp(name, "Xtimerint") == 0 ||
      strcmp(name, "Xxen_intr_upcall") == 0)
   frame_type = 130;
  else if (strcmp(name, "Xcpustop") == 0 ||
      strcmp(name, "Xrendezvous") == 0 ||
      strcmp(name, "Xipi_intr_bitmap_handler") == 0) {

   frame_type = 130;
  }
 }




 if (frame_type == NORMAL) {
  *ip = (db_addr_t) eip;
  *fp = (struct i386_frame *) ebp;
  return;
 }

 db_print_stack_entry(name, 0, 0, 0, eip, &(*fp)->f_frame);






 if (frame_type == DOUBLE_FAULT) {
  esp = PCPU_GET(common_tssp)->tss_esp;
  eip = PCPU_GET(common_tssp)->tss_eip;
  ebp = PCPU_GET(common_tssp)->tss_ebp;
  db_printf(
      "--- trap 0x17, eip = %#r, esp = %#r, ebp = %#r ---\n",
      eip, esp, ebp);
  *ip = (db_addr_t) eip;
  *fp = (struct i386_frame *) ebp;
  return;
 }






 tf = (struct trapframe *)(*fp)->f_frame;





 if (tf == ((void*)0)) {
  *ip = 0;
  *fp = 0;
  db_printf("--- kthread start\n");
  return;
 }

 esp = get_esp(tf);
 eip = tf->tf_eip;
 ebp = tf->tf_ebp;
 switch (frame_type) {
 case 128:
  db_printf("--- trap %#r", tf->tf_trapno);
  break;
 case 129:
  db_printf("--- syscall");
  decode_syscall(tf->tf_eax, td);
  break;
 case 130:
  db_printf("--- interrupt");
  break;
 default:
  panic("The moon has moved again.");
 }
 db_printf(", eip = %#r, esp = %#r, ebp = %#r ---\n", eip, esp, ebp);






 switch (frame_type) {
 case 128:
 case 130:
  if (!TRAPF_USERMODE(tf))
   break;

 case 129:
  ebp = 0;
  eip = 0;
  break;
 }

 *ip = (db_addr_t) eip;
 *fp = (struct i386_frame *) ebp;
}

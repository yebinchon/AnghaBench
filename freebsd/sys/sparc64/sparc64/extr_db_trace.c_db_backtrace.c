
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ u_long ;
struct trapframe {int tf_tpc; } ;
struct thread {int dummy; } ;
struct frame {int fr_fp; int fr_pc; } ;
typedef scalar_t__ db_expr_t ;
typedef scalar_t__ db_addr_t ;
typedef scalar_t__ c_db_sym_t ;


 scalar_t__ C_DB_SYM_NULL ;
 int DB_STGY_ANY ;
 int DB_STGY_PROC ;
 int FALSE ;
 int INKERNEL (int ) ;
 scalar_t__ SPOFF ;
 scalar_t__ db_get_value (scalar_t__,int,int ) ;
 int db_pager_quit ;
 int db_print_trap (struct thread*,struct trapframe*,int) ;
 int db_printf (char*,...) ;
 int db_printsym (scalar_t__,int ) ;
 scalar_t__ db_search_symbol (scalar_t__,int ,scalar_t__*) ;
 int db_symbol_values (scalar_t__,char const**,scalar_t__*) ;
 scalar_t__ tl_text_begin ;
 scalar_t__ tl_text_end ;
 scalar_t__ tl_trap_begin ;
 scalar_t__ tl_trap_end ;

__attribute__((used)) static int
db_backtrace(struct thread *td, struct frame *fp, int count)
{
 struct trapframe *tf;
 const char *name;
 c_db_sym_t sym;
 db_expr_t offset;
 db_expr_t value;
 db_addr_t npc;
 db_addr_t pc;
 int trap;
 int user;

 if (count == -1)
  count = 1024;

 trap = 0;
 user = 0;
 npc = 0;
 while (count-- && !user && !db_pager_quit) {
  pc = (db_addr_t)db_get_value((db_addr_t)&fp->fr_pc,
      sizeof(fp->fr_pc), FALSE);
  if (trap) {
   pc = npc;
   trap = 0;
  }
  if (!INKERNEL((vm_offset_t)pc))
   break;
  sym = db_search_symbol(pc, DB_STGY_ANY, &offset);
  if (sym == C_DB_SYM_NULL) {
   value = 0;
   name = ((void*)0);
  } else
   db_symbol_values(sym, &name, &value);
  if (name == ((void*)0))
   name = "(null)";
  fp = (struct frame *)(db_get_value((db_addr_t)&fp->fr_fp,
     sizeof(fp->fr_fp), FALSE) + SPOFF);
  if ((value > (u_long)tl_trap_begin &&
      value < (u_long)tl_trap_end) ||
      (value > (u_long)tl_text_begin &&
      value < (u_long)tl_text_end)) {
   tf = (struct trapframe *)(fp + 1);
   npc = db_get_value((db_addr_t)&tf->tf_tpc,
       sizeof(tf->tf_tpc), FALSE);
   user = db_print_trap(td, tf, count);
   trap = 1;
  } else {
   db_printf("%s() at ", name);
   db_printsym(pc, DB_STGY_PROC);
   db_printf("\n");
  }
 }
 return (0);
}

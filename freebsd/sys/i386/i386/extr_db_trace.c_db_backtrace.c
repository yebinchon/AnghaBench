
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_eflags; intptr_t tf_esp; scalar_t__ tf_ebp; scalar_t__ tf_err; int tf_ss; int tf_eip; int tf_cs; } ;
struct thread {int dummy; } ;
struct i386_frame {int f_arg0; int f_retaddr; } ;
typedef scalar_t__ register_t ;
typedef scalar_t__ db_expr_t ;
typedef scalar_t__ db_addr_t ;
typedef int * c_db_sym_t ;


 int * C_DB_SYM_NULL ;
 int DB_STGY_ANY ;
 int DB_STGY_PROC ;
 int MAXNARG ;
 int PSL_VM ;
 scalar_t__ TF_HAS_STACKREGS (struct trapframe*) ;
 scalar_t__ db_get_value (int,int,int) ;
 int db_nextframe (struct i386_frame**,scalar_t__*,struct thread*) ;
 int db_numargs (struct i386_frame*) ;
 int db_pager_quit ;
 int db_print_stack_entry (char const*,int,char**,int*,scalar_t__,struct i386_frame*) ;
 int db_printf (char*,char*,int ,int ,int ,intptr_t,scalar_t__,struct trapframe*) ;
 int * db_search_symbol (scalar_t__,int ,scalar_t__*) ;
 int db_segsize (struct trapframe*) ;
 scalar_t__ db_sym_numargs (int *,int*,char**) ;
 int db_symbol_values (int *,char const**,int *) ;
 int get_esp (struct trapframe*) ;
 struct trapframe* kdb_frame ;
 int rss () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
db_backtrace(struct thread *td, struct trapframe *tf, struct i386_frame *frame,
    db_addr_t pc, register_t sp, int count)
{
 struct i386_frame *actframe;

 char *argnames[16], **argnp = ((void*)0);
 const char *name;
 int *argp;
 db_expr_t offset;
 c_db_sym_t sym;
 int instr, narg;
 bool first;

 if (db_segsize(tf) == 16) {
  db_printf(
"--- 16-bit%s, cs:eip = %#x:%#x, ss:esp = %#x:%#x, ebp = %#x, tf = %p ---\n",
      (tf->tf_eflags & PSL_VM) ? " (vm86)" : "",
      tf->tf_cs, tf->tf_eip,
      TF_HAS_STACKREGS(tf) ? tf->tf_ss : rss(),
      TF_HAS_STACKREGS(tf) ? tf->tf_esp : (intptr_t)&tf->tf_esp,
      tf->tf_ebp, tf);
  return (0);
 }


 if (frame == ((void*)0))
  goto out;
 if (kdb_frame && pc == kdb_frame->tf_err) {




  if (TF_HAS_STACKREGS(kdb_frame))
   instr = (int)(kdb_frame + 1);
  else
   instr = (int)&kdb_frame->tf_esp;
  pc = db_get_value(instr, 4, 0);
 }

 if (count == -1)
  count = 1024;

 first = 1;
 while (count-- && !db_pager_quit) {
  sym = db_search_symbol(pc, DB_STGY_ANY, &offset);
  db_symbol_values(sym, &name, ((void*)0));
  actframe = frame;
  if (first) {
   first = 0;
   if (sym == C_DB_SYM_NULL && sp != 0) {





    db_print_stack_entry(name, 0, 0, 0, pc,
        ((void*)0));
    pc = db_get_value(sp, 4, 0);
    if (db_search_symbol(pc, DB_STGY_PROC,
        &offset) == C_DB_SYM_NULL)
     break;
    continue;
   } else if (tf != ((void*)0)) {
    instr = db_get_value(pc, 4, 0);
    if ((instr & 0xffffff) == 0x00e58955) {

     actframe = (void *)(get_esp(tf) - 4);
    } else if ((instr & 0xffff) == 0x0000e589) {

     actframe = (void *)get_esp(tf);
     if (tf->tf_ebp == 0) {

      frame = actframe;
     }
    } else if ((instr & 0xff) == 0x000000c3) {

     actframe = (void *)(get_esp(tf) - 4);
    } else if (offset == 0) {

     actframe = (void *)(get_esp(tf) - 4);
    }
   } else if (strcmp(name, "fork_trampoline") == 0) {




    db_print_stack_entry(name, 0, 0, 0, pc,
        actframe);
    break;
   }
  }

  argp = &actframe->f_arg0;
  narg = 16;
  if (sym != ((void*)0) && db_sym_numargs(sym, &narg, argnames)) {
   argnp = argnames;
  } else {
   narg = db_numargs(frame);
  }

  db_print_stack_entry(name, narg, argnp, argp, pc, actframe);

  if (actframe != frame) {

   pc = (db_addr_t)
       db_get_value((int)&actframe->f_retaddr, 4, 0);
   continue;
  }

  db_nextframe(&frame, &pc, td);

out:







  if (frame == ((void*)0) || frame <= actframe) {
   if (pc != 0) {
    sym = db_search_symbol(pc, DB_STGY_ANY,
        &offset);
    db_symbol_values(sym, &name, ((void*)0));
    db_print_stack_entry(name, 0, 0, 0, pc, frame);
   }
   break;
  }
 }

 return (0);
}

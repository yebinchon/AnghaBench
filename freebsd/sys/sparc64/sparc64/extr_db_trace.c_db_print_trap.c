
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_long ;
struct trapframe {int tf_tpc; int * tf_out; int tf_pil; int tf_level; int * tf_global; int tf_tar; int tf_sfsr; int tf_sfar; int tf_type; } ;
struct thread {struct proc* td_proc; } ;
struct proc {TYPE_2__* p_sysent; } ;
typedef int db_expr_t ;
typedef void* db_addr_t ;
typedef int c_db_sym_t ;
struct TYPE_4__ {size_t sv_size; int sv_name; TYPE_1__* sv_table; } ;
struct TYPE_3__ {scalar_t__ sy_call; } ;


 int DB_STGY_ANY ;
 int DB_STGY_PROC ;
 int DB_SYM_NULL ;
 int FALSE ;






 size_t T_KERNEL ;


 void* db_get_value (void*,int,int ) ;
 int db_printf (char*,...) ;
 int db_printsym (void*,int ) ;
 int db_search_symbol (void*,int ,int *) ;
 int db_symbol_values (int ,char const**,int *) ;
 int db_utrace (struct thread*,struct trapframe*,int) ;
 int * trap_msg ;

__attribute__((used)) static int
db_print_trap(struct thread *td, struct trapframe *tf, int count)
{
 struct proc *p;
 const char *symname;
 c_db_sym_t sym;
 db_expr_t diff;
 db_addr_t func;
 db_addr_t tpc;
 u_long type;
 u_long sfar;
 u_long sfsr;
 u_long tar;
 u_long level;
 u_long pil;
 u_long code;
 u_long o7;
 int user;

 p = td->td_proc;
 type = db_get_value((db_addr_t)&tf->tf_type,
     sizeof(tf->tf_type), FALSE);
 db_printf("-- %s", trap_msg[type & ~T_KERNEL]);
 switch (type & ~T_KERNEL) {
 case 133:
  tar = (u_long)db_get_value((db_addr_t)&tf->tf_tar,
      sizeof(tf->tf_tar), FALSE);
  db_printf(" tar=%#lx", tar);

 case 135:
 case 132:
 case 129:
  sfar = (u_long)db_get_value((db_addr_t)&tf->tf_sfar,
      sizeof(tf->tf_sfar), FALSE);
  sfsr = (u_long)db_get_value((db_addr_t)&tf->tf_sfsr,
      sizeof(tf->tf_sfsr), FALSE);
  db_printf(" sfar=%#lx sfsr=%#lx", sfar, sfsr);
  break;
 case 134:
 case 131:
  tar = (u_long)db_get_value((db_addr_t)&tf->tf_tar,
      sizeof(tf->tf_tar), FALSE);
  db_printf(" tar=%#lx", tar);
  break;
 case 128:
  code = db_get_value((db_addr_t)&tf->tf_global[1],
      sizeof(tf->tf_global[1]), FALSE);
  db_printf(" (%ld", code);
  if (code >= 0 && code < p->p_sysent->sv_size) {
   func = (db_addr_t)p->p_sysent->sv_table[code].sy_call;
   sym = db_search_symbol(func, DB_STGY_ANY, &diff);
   if (sym != DB_SYM_NULL && diff == 0) {
    db_symbol_values(sym, &symname, ((void*)0));
    db_printf(", %s, %s", p->p_sysent->sv_name,
        symname);
   }
   db_printf(")");
  }
  break;
 case 130:
  level = (u_long)db_get_value((db_addr_t)&tf->tf_level,
      sizeof(tf->tf_level), FALSE);
  pil = (u_long)db_get_value((db_addr_t)&tf->tf_pil,
      sizeof(tf->tf_pil), FALSE);
  db_printf(" level=%#lx pil=%#lx", level, pil);
  break;
 default:
  break;
 }
 o7 = (u_long)db_get_value((db_addr_t)&tf->tf_out[7],
     sizeof(tf->tf_out[7]), FALSE);
 db_printf(" %%o7=%#lx --\n", o7);
 user = (type & T_KERNEL) == 0;
 if (user) {
  tpc = db_get_value((db_addr_t)&tf->tf_tpc,
      sizeof(tf->tf_tpc), FALSE);
  db_printf("userland() at ");
  db_printsym(tpc, DB_STGY_PROC);
  db_printf("\n");
  db_utrace(td, tf, count);
 }
 return (user);
}

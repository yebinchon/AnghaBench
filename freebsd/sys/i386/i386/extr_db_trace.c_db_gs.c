
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe_vm86 {int tf_vm86_gs; } ;
struct db_variable {int dummy; } ;
typedef int db_expr_t ;
struct TYPE_2__ {int tf_eflags; } ;


 int DB_VAR_GET ;
 int PSL_VM ;
 TYPE_1__* kdb_frame ;
 int load_gs (int ) ;
 int rgs () ;

__attribute__((used)) static int
db_gs(struct db_variable *vp, db_expr_t *valuep, int op)
{
 struct trapframe_vm86 *tfp;

 if (kdb_frame != ((void*)0) && kdb_frame->tf_eflags & PSL_VM) {
  tfp = (void *)kdb_frame;
  if (op == DB_VAR_GET)
   *valuep = tfp->tf_vm86_gs;
  else
   tfp->tf_vm86_gs = *valuep;
  return (1);
 }
 if (op == DB_VAR_GET)
  *valuep = rgs();
 else
  load_gs(*valuep);
 return (1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct db_variable {int dummy; } ;
typedef int db_expr_t ;
struct TYPE_3__ {int tf_ss; } ;


 int DB_VAR_GET ;
 scalar_t__ TF_HAS_STACKREGS (TYPE_1__*) ;
 TYPE_1__* kdb_frame ;
 int rss () ;

__attribute__((used)) static int
db_ss(struct db_variable *vp, db_expr_t *valuep, int op)
{

 if (kdb_frame == ((void*)0))
  return (0);

 if (op == DB_VAR_GET)
  *valuep = TF_HAS_STACKREGS(kdb_frame) ? kdb_frame->tf_ss :
      rss();
 else if (TF_HAS_STACKREGS(kdb_frame))
  kdb_frame->tf_ss = *valuep;
 return (1);
}

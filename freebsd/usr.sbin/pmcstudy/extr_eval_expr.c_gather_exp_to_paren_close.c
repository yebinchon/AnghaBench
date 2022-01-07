
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {scalar_t__ type; struct expression* next; } ;


 scalar_t__ TYPE_PARN_OPEN ;
 double run_expr (struct expression*,int ,struct expression**) ;

__attribute__((used)) static struct expression *
gather_exp_to_paren_close(struct expression *exp, double *val_fill)
{
 struct expression *lastproc;
 double val;

 if (exp->type == TYPE_PARN_OPEN) {
  lastproc = gather_exp_to_paren_close(exp->next, &val);
  *val_fill = val;
 } else {
  *val_fill = run_expr(exp, 0, &lastproc);
 }
 return(lastproc);
}

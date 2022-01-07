
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intr_info {scalar_t__ cause_reg; scalar_t__ enable_reg; int fatal; int flags; struct intr_action* actions; } ;
struct intr_action {int mask; int (* action ) (struct adapter*,int ,int) ;int arg; } ;
struct adapter {int dummy; } ;


 scalar_t__ A_PL_INT_CAUSE ;
 int NONFATAL_IF_DISABLED ;
 int stub1 (struct adapter*,int ,int) ;
 int t4_read_reg (struct adapter*,scalar_t__) ;
 int t4_show_intr_info (struct adapter*,struct intr_info const*,int) ;
 int t4_write_reg (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static bool
t4_handle_intr(struct adapter *adap, const struct intr_info *ii,
    u32 additional_cause, bool verbose)
{
 u32 cause, fatal;
 bool rc;
 const struct intr_action *action;






 cause = t4_read_reg(adap, ii->cause_reg);
 if (ii->cause_reg == A_PL_INT_CAUSE)
  cause &= t4_read_reg(adap, ii->enable_reg);
 if (verbose || cause != 0)
  t4_show_intr_info(adap, ii, cause);
 fatal = cause & ii->fatal;
 if (fatal != 0 && ii->flags & NONFATAL_IF_DISABLED)
  fatal &= t4_read_reg(adap, ii->enable_reg);
 cause |= additional_cause;
 if (cause == 0)
  return (0);

 rc = fatal != 0;
 for (action = ii->actions; action && action->mask != 0; action++) {
  if (!(action->mask & cause))
   continue;
  rc |= (action->action)(adap, action->arg, verbose);
 }


 t4_write_reg(adap, ii->cause_reg, cause);
 (void)t4_read_reg(adap, ii->cause_reg);

 return (rc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minmax; } ;
struct TYPE_4__ {int params; TYPE_1__ config; } ;
struct t4_sched_params {scalar_t__ type; scalar_t__ subcmd; TYPE_2__ u; } ;
struct adapter {int dummy; } ;


 int EINVAL ;
 scalar_t__ SCHED_CLASS_SUBCMD_CONFIG ;
 scalar_t__ SCHED_CLASS_SUBCMD_PARAMS ;
 scalar_t__ SCHED_CLASS_TYPE_PACKET ;
 int set_sched_class_config (struct adapter*,int ) ;
 int set_sched_class_params (struct adapter*,int *,int) ;

int
t4_set_sched_class(struct adapter *sc, struct t4_sched_params *p)
{

 if (p->type != SCHED_CLASS_TYPE_PACKET)
  return (EINVAL);

 if (p->subcmd == SCHED_CLASS_SUBCMD_CONFIG)
  return (set_sched_class_config(sc, p->u.config.minmax));

 if (p->subcmd == SCHED_CLASS_SUBCMD_PARAMS)
  return (set_sched_class_params(sc, &p->u.params, 1));

 return (EINVAL);
}

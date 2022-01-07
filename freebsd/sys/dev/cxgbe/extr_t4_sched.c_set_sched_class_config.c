
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int EINVAL ;
 int FW_SCHED_TYPE_PKTSCHED ;
 int INTR_OK ;
 int SLEEP_OK ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int t4_sched_config (struct adapter*,int ,int,int) ;

__attribute__((used)) static int
set_sched_class_config(struct adapter *sc, int minmax)
{
 int rc;

 if (minmax < 0)
  return (EINVAL);

 rc = begin_synchronized_op(sc, ((void*)0), SLEEP_OK | INTR_OK, "t4sscc");
 if (rc)
  return (rc);
 rc = -t4_sched_config(sc, FW_SCHED_TYPE_PKTSCHED, minmax, 1);
 end_synchronized_op(sc, 0);

 return (rc);
}

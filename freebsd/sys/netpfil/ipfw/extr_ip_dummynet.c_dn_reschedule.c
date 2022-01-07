
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_DIRECT_EXEC ;
 int C_HARDCLOCK ;
 int callout_reset_sbt (int *,int ,int ,int ,int *,int) ;
 scalar_t__ dn_gone ;
 int dn_timeout ;
 int dummynet ;
 int tick_sbt ;

void
dn_reschedule(void)
{

 if (dn_gone != 0)
  return;
 callout_reset_sbt(&dn_timeout, tick_sbt, 0, dummynet, ((void*)0),
     C_HARDCLOCK | C_DIRECT_EXEC);
}

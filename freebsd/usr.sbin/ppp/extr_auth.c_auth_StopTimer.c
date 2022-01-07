
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct authinfo {int authtimer; } ;


 int timer_Stop (int *) ;

void
auth_StopTimer(struct authinfo *authp)
{
  timer_Stop(&authp->authtimer);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimerval {int dummy; } ;
typedef int itv ;


 int ITIMER_REAL ;
 int bzero (struct itimerval*,int) ;
 int setitimer (int ,struct itimerval*,int *) ;

__attribute__((used)) static void
cancel_alarm(void)
{
 struct itimerval itv;
 bzero(&itv, sizeof(itv));
 setitimer(ITIMER_REAL, &itv, ((void*)0));
}

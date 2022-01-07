
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;
typedef int itv ;


 int ITIMER_REAL ;
 int SIGALRM ;
 int bzero (struct itimerval*,int) ;
 int setitimer (int ,struct itimerval*,int *) ;
 int signal (int ,int ) ;
 int signal_alarm ;

__attribute__((used)) static void
setup_alarm(int seconds)
{
 struct itimerval itv;
 bzero(&itv, sizeof(itv));
 (void)seconds;
 itv.it_value.tv_sec = seconds;

 signal(SIGALRM, signal_alarm);
 setitimer(ITIMER_REAL, &itv, ((void*)0));
}

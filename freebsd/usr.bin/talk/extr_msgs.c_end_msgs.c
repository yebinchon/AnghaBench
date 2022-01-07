
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimerval {int it_interval; int it_value; } ;


 int ITIMER_REAL ;
 int SIGALRM ;
 int SIG_DFL ;
 int setitimer (int ,struct itimerval*,struct itimerval*) ;
 int signal (int ,int ) ;
 int timerclear (int *) ;

void
end_msgs(void)
{
 struct itimerval itimer;

 timerclear(&itimer.it_value);
 timerclear(&itimer.it_interval);
 setitimer(ITIMER_REAL, &itimer, (struct itimerval *)0);
 signal(SIGALRM, SIG_DFL);
}

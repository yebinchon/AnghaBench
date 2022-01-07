
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tv_usec; int tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; int tv_sec; } ;
struct itimerval {TYPE_2__ it_interval; TYPE_1__ it_value; } ;


 int ITIMER_REAL ;
 int MSG_INTERVAL ;
 int SIGALRM ;
 int current_state ;
 int disp_msg ;
 int message (int ) ;
 int setitimer (int ,struct itimerval*,struct itimerval*) ;
 int signal (int ,int ) ;

void
start_msgs(void)
{
 struct itimerval itimer;

 message(current_state);
 signal(SIGALRM, disp_msg);
 itimer.it_value.tv_sec = itimer.it_interval.tv_sec = MSG_INTERVAL;
 itimer.it_value.tv_usec = itimer.it_interval.tv_usec = 0;
 setitimer(ITIMER_REAL, &itimer, (struct itimerval *)0);
}

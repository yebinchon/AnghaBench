
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sigaction {int sa_flags; int sa_mask; int sa_handler; } ;
typedef int sa ;
struct TYPE_4__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {TYPE_1__ it_value; } ;


 int ITIMER_REAL ;
 int SA_RESTART ;
 int SIGALRM ;
 int early_output ;
 TYPE_2__ early_output_timer ;
 int memset (struct sigaction*,int ,int) ;
 int setitimer (int ,TYPE_2__*,int *) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void setup_early_output(void)
{
 struct sigaction sa;
 memset(&sa, 0, sizeof(sa));
 sa.sa_handler = early_output;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = SA_RESTART;
 sigaction(SIGALRM, &sa, ((void*)0));
 early_output_timer.it_value.tv_sec = 0;
 early_output_timer.it_value.tv_usec = 100000;
 setitimer(ITIMER_REAL, &early_output_timer, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int tim ;
typedef scalar_t__ suseconds_t ;
struct TYPE_2__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;


 int EX_OSERR ;
 int ITIMER_REAL ;
 int err (int ,char*) ;
 int memset (struct itimerval*,int ,int) ;
 int setitimer (int ,struct itimerval*,int *) ;

__attribute__((used)) static void
set_interval(double iv)
{
 struct itimerval tim;

 memset(&tim, 0, sizeof(tim));
 tim.it_value.tv_sec = (time_t)iv;
 iv -= (time_t)iv;
 tim.it_value.tv_usec = (suseconds_t)(iv * 1000000UL);

 if (setitimer(ITIMER_REAL, &tim, ((void*)0)) == -1)
  err(EX_OSERR, "setitimer()");
}

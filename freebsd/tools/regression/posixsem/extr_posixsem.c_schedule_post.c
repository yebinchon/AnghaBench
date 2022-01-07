
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
struct itimerval {TYPE_1__ it_value; } ;
typedef int semid_t ;
typedef int it ;


 int ITIMER_REAL ;
 int SIGALRM ;
 scalar_t__ SIG_ERR ;
 int alarm_handler ;
 int alarm_handler_installed ;
 int alarm_id ;
 int bzero (struct itimerval*,int) ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 scalar_t__ setitimer (int ,struct itimerval*,int *) ;
 scalar_t__ signal (int ,int ) ;

__attribute__((used)) static int
schedule_post(semid_t id, u_int msec)
{
 struct itimerval it;

 if (!alarm_handler_installed) {
  if (signal(SIGALRM, alarm_handler) == SIG_ERR) {
   fail_errno("signal(SIGALRM)");
   return (-1);
  }
  alarm_handler_installed = 1;
 }
 if (alarm_id != -1) {
  fail_err("ksem_post() already scheduled");
  return (-1);
 }
 alarm_id = id;
 bzero(&it, sizeof(it));
 it.it_value.tv_sec = msec / 1000;
 it.it_value.tv_usec = (msec % 1000) * 1000;
 if (setitimer(ITIMER_REAL, &it, ((void*)0)) < 0) {
  fail_errno("setitimer");
  return (-1);
 }
 return (0);
}

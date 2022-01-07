
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimerval {int dummy; } ;
typedef int it ;


 int ITIMER_REAL ;
 scalar_t__ alarm_errno ;
 int alarm_id ;
 int bzero (struct itimerval*,int) ;
 scalar_t__ errno ;
 int fail_errno (char*) ;
 scalar_t__ setitimer (int ,struct itimerval*,int *) ;

__attribute__((used)) static int
check_alarm(int just_clear)
{
 struct itimerval it;

 bzero(&it, sizeof(it));
 if (just_clear) {
  setitimer(ITIMER_REAL, &it, ((void*)0));
  alarm_errno = 0;
  alarm_id = -1;
  return (0);
 }
 if (setitimer(ITIMER_REAL, &it, ((void*)0)) < 0) {
  fail_errno("setitimer");
  return (-1);
 }
 if (alarm_errno != 0 && !just_clear) {
  errno = alarm_errno;
  fail_errno("ksem_post() (via timeout)");
  alarm_errno = 0;
  return (-1);
 }
 alarm_id = -1;

 return (0);
}

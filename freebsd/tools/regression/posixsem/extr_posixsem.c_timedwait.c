
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int semid_t ;


 int CLOCK_REALTIME ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int errno ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_timedwait (int ,struct timespec*) ;
 int timespecadd (struct timespec*,struct timespec*,struct timespec*) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;

__attribute__((used)) static int
timedwait(semid_t id, u_int msec, u_int *delta, int error)
{
 struct timespec start, end;

 if (clock_gettime(CLOCK_REALTIME, &start) < 0) {
  fail_errno("clock_gettime(CLOCK_REALTIME)");
  return (-1);
 }
 end.tv_sec = msec / 1000;
 end.tv_nsec = msec % 1000 * 1000000;
 timespecadd(&end, &start, &end);
 if (ksem_timedwait(id, &end) < 0) {
  if (errno != error) {
   fail_errno("ksem_timedwait");
   return (-1);
  }
 } else if (error != 0) {
  fail_err("ksem_timedwait() didn't fail");
  return (-1);
 }
 if (clock_gettime(CLOCK_REALTIME, &end) < 0) {
  fail_errno("clock_gettime(CLOCK_REALTIME)");
  return (-1);
 }
 timespecsub(&end, &start, &end);
 *delta = end.tv_nsec / 1000000;
 *delta += end.tv_sec * 1000;
 return (0);
}

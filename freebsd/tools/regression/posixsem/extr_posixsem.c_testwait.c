
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int semid_t ;


 int CLOCK_REALTIME ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_wait (int ) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;

__attribute__((used)) static int
testwait(semid_t id, u_int *delta)
{
 struct timespec start, end;

 if (clock_gettime(CLOCK_REALTIME, &start) < 0) {
  fail_errno("clock_gettime(CLOCK_REALTIME)");
  return (-1);
 }
 if (ksem_wait(id) < 0) {
  fail_errno("ksem_wait");
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

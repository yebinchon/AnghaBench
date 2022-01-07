
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timespec {scalar_t__ tv_sec; } ;
struct thread {int dummy; } ;


 int CLOCK_MONOTONIC_FAST ;
 int ENOENT ;
 int kern_clock_gettime (struct thread*,int ,struct timespec*) ;
 scalar_t__ wd_lastpat ;
 int wd_lastpat_valid ;

__attribute__((used)) static int
wd_get_time_left(struct thread *td, time_t *remainp)
{
 struct timespec ts;
 int error;

 error = kern_clock_gettime(td, CLOCK_MONOTONIC_FAST, &ts);
 if (error)
  return (error);
 if (!wd_lastpat_valid)
  return (ENOENT);
 *remainp = ts.tv_sec - wd_lastpat;
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct thread {int dummy; } ;


 int EINVAL ;
 int PRIV_SETTIMEOFDAY ;
 int priv_check (struct thread*,int ) ;
 int settime (struct thread*,struct timeval*) ;

int
kern_settimeofday(struct thread *td, struct timeval *tv, struct timezone *tzp)
{
 int error;

 error = priv_check(td, PRIV_SETTIMEOFDAY);
 if (error)
  return (error);

 if (tv) {
  if (tv->tv_usec < 0 || tv->tv_usec >= 1000000 ||
      tv->tv_sec < 0)
   return (EINVAL);
  error = settime(td, tv);
 }
 return (error);
}

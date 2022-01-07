
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;


 int EINVAL ;
 int copyin (void const*,struct timespec*,int) ;

inline int
umtx_copyin_timeout(const void *addr, struct timespec *tsp)
{
 int error;

 error = copyin(addr, tsp, sizeof(struct timespec));
 if (error == 0) {
  if (tsp->tv_sec < 0 ||
      tsp->tv_nsec >= 1000000000 ||
      tsp->tv_nsec < 0)
   error = EINVAL;
 }
 return (error);
}

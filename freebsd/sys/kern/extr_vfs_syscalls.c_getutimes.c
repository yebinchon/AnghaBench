
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int tv_usec; } ;
struct timespec {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int EINVAL ;
 int TIMEVAL_TO_TIMESPEC (struct timeval const*,struct timespec*) ;
 int UIO_SYSSPACE ;
 int copyin (struct timeval const*,struct timeval*,int) ;
 int vfs_timestamp (struct timespec*) ;

__attribute__((used)) static int
getutimes(const struct timeval *usrtvp, enum uio_seg tvpseg,
    struct timespec *tsp)
{
 struct timeval tv[2];
 const struct timeval *tvp;
 int error;

 if (usrtvp == ((void*)0)) {
  vfs_timestamp(&tsp[0]);
  tsp[1] = tsp[0];
 } else {
  if (tvpseg == UIO_SYSSPACE) {
   tvp = usrtvp;
  } else {
   if ((error = copyin(usrtvp, tv, sizeof(tv))) != 0)
    return (error);
   tvp = tv;
  }

  if (tvp[0].tv_usec < 0 || tvp[0].tv_usec >= 1000000 ||
      tvp[1].tv_usec < 0 || tvp[1].tv_usec >= 1000000)
   return (EINVAL);
  TIMEVAL_TO_TIMESPEC(&tvp[0], &tsp[0]);
  TIMEVAL_TO_TIMESPEC(&tvp[1], &tsp[1]);
 }
 return (0);
}

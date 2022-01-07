
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int TIMEVAL_TO_TIMESPEC (struct timeval*,struct timespec*) ;




 int getnanotime (struct timespec*) ;
 int microtime (struct timeval*) ;
 int nanotime (struct timespec*) ;
 int time_second ;
 int timestamp_precision ;

void
vfs_timestamp(struct timespec *tsp)
{
 struct timeval tv;

 switch (timestamp_precision) {
 case 129:
  tsp->tv_sec = time_second;
  tsp->tv_nsec = 0;
  break;
 case 131:
  getnanotime(tsp);
  break;
 case 128:
  microtime(&tv);
  TIMEVAL_TO_TIMESPEC(&tv, tsp);
  break;
 case 130:
 default:
  nanotime(tsp);
  break;
 }
}

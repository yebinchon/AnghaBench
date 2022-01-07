
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int tv_nsec; int tv_sec; } ;






 int TIMEVAL_TO_TIMESPEC (struct timeval*,struct timespec*) ;
 int getnanouptime (struct timespec*) ;
 int microuptime (struct timeval*) ;
 int nanouptime (struct timespec*) ;
 int snd_timestamp_precision ;
 int time_second ;

void
snd_timestamp(struct timespec *tsp)
{
 struct timeval tv;

 switch (snd_timestamp_precision) {
 case 129:
  tsp->tv_sec = time_second;
  tsp->tv_nsec = 0;
  break;
 case 131:
  getnanouptime(tsp);
  break;
 case 128:
  microuptime(&tv);
  TIMEVAL_TO_TIMESPEC(&tv, tsp);
  break;
 case 130:
  nanouptime(tsp);
  break;
 default:
  snd_timestamp_precision = 131;
  getnanouptime(tsp);
  break;
 }
}

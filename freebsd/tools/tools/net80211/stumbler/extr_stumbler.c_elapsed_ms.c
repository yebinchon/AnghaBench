
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; int tv_usec; } ;


 int assert (int) ;

unsigned long elapsed_ms(struct timeval* now, struct timeval* prev) {
 unsigned long elapsed = 0;

 if (now->tv_sec > prev->tv_sec)
  elapsed = 1000*1000 - prev->tv_usec +
     now->tv_usec;
 else {
  assert(now->tv_sec == prev->tv_sec);
  elapsed = now->tv_usec - prev->tv_usec;
 }
 elapsed /= 1000;

 elapsed += (now->tv_sec - prev->tv_sec)*1000;
 return elapsed;
}

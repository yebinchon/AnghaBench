
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;



__attribute__((used)) static __inline void
timespec_add(struct timespec *tsa, struct timespec *tsb)
{

 tsa->tv_sec += tsb->tv_sec;
 tsa->tv_nsec += tsb->tv_nsec;
 if (tsa->tv_nsec >= 1000000000) {
  tsa->tv_sec++;
  tsa->tv_nsec -= 1000000000;
 }
}

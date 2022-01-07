
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
typedef long int64_t ;


 long const NSEC_PER_SEC ;

struct timeval
ns_to_timeval(const int64_t nsec)
{
        struct timeval tv;
 long rem;

 if (nsec == 0) {
  tv.tv_sec = 0;
  tv.tv_usec = 0;
  return (tv);
 }

        tv.tv_sec = nsec / NSEC_PER_SEC;
 rem = nsec % NSEC_PER_SEC;
        if (rem < 0) {
                tv.tv_sec--;
                rem += NSEC_PER_SEC;
        }
 tv.tv_usec = rem / 1000;
        return (tv);
}

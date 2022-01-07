
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;


 int MACHCLK_SHIFT ;
 int getboottime (struct timeval*) ;
 scalar_t__ machclk_usepcc ;
 int microtime (struct timeval*) ;
 int panic (char*) ;
 int rdtsc () ;

u_int64_t
read_machclk(void)
{
 u_int64_t val;

 if (machclk_usepcc) {

  val = rdtsc();



 } else {
  struct timeval tv, boottime;

  microtime(&tv);
  getboottime(&boottime);
  val = (((u_int64_t)(tv.tv_sec - boottime.tv_sec) * 1000000
      + tv.tv_usec) << MACHCLK_SHIFT);
 }
 return (val);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {int dummy; } ;


 scalar_t__ GET_NANOSEC (struct timespec*) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;

uint64_t
isp_nanotime_sub(struct timespec *b, struct timespec *a)
{
 uint64_t elapsed;
 struct timespec x;

 timespecsub(b, a, &x);
 elapsed = GET_NANOSEC(&x);
 if (elapsed == 0)
  elapsed++;
 return (elapsed);
}

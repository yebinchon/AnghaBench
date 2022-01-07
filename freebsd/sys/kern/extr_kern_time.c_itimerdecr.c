
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_1__ it_value; TYPE_1__ it_interval; } ;


 scalar_t__ timevalisset (TYPE_1__*) ;

int
itimerdecr(struct itimerval *itp, int usec)
{

 if (itp->it_value.tv_usec < usec) {
  if (itp->it_value.tv_sec == 0) {

   usec -= itp->it_value.tv_usec;
   goto expire;
  }
  itp->it_value.tv_usec += 1000000;
  itp->it_value.tv_sec--;
 }
 itp->it_value.tv_usec -= usec;
 usec = 0;
 if (timevalisset(&itp->it_value))
  return (1);

expire:
 if (timevalisset(&itp->it_interval)) {
  itp->it_value = itp->it_interval;
  itp->it_value.tv_usec -= usec;
  if (itp->it_value.tv_usec < 0) {
   itp->it_value.tv_usec += 1000000;
   itp->it_value.tv_sec--;
  }
 } else
  itp->it_value.tv_usec = 0;
 return (0);
}

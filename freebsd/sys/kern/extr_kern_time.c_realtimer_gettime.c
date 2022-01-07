
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_sec; int tv_nsec; } ;
struct itimerspec {TYPE_1__ it_value; } ;
struct itimer {struct itimerspec it_time; int it_clockid; int it_mtx; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int realtimer_clocktime (int ,struct timespec*) ;
 int timespecsub (TYPE_1__*,struct timespec*,TYPE_1__*) ;

__attribute__((used)) static int
realtimer_gettime(struct itimer *it, struct itimerspec *ovalue)
{
 struct timespec cts;

 mtx_assert(&it->it_mtx, MA_OWNED);

 realtimer_clocktime(it->it_clockid, &cts);
 *ovalue = it->it_time;
 if (ovalue->it_value.tv_sec != 0 || ovalue->it_value.tv_nsec != 0) {
  timespecsub(&ovalue->it_value, &cts, &ovalue->it_value);
  if (ovalue->it_value.tv_sec < 0 ||
      (ovalue->it_value.tv_sec == 0 &&
       ovalue->it_value.tv_nsec == 0)) {
   ovalue->it_value.tv_sec = 0;
   ovalue->it_value.tv_nsec = 1;
  }
 }
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct eventtimer {void* et_frequency; } ;


 int ET_LOCK () ;
 int ET_UNLOCK () ;
 int configtimer (int) ;
 struct eventtimer* timer ;

void
cpu_et_frequency(struct eventtimer *et, uint64_t newfreq)
{

 ET_LOCK();
 if (et == timer) {
  configtimer(0);
  et->et_frequency = newfreq;
  configtimer(1);
 } else
  et->et_frequency = newfreq;
 ET_UNLOCK();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int it_interval; int it_value; } ;
struct itimer {int it_callout; TYPE_1__ it_time; int it_mtx; } ;


 int ITIMER_LOCK (struct itimer*) ;
 int ITIMER_UNLOCK (struct itimer*) ;
 int MA_OWNED ;
 int callout_drain (int *) ;
 int mtx_assert (int *,int ) ;
 int timespecclear (int *) ;

__attribute__((used)) static int
realtimer_delete(struct itimer *it)
{
 mtx_assert(&it->it_mtx, MA_OWNED);





 timespecclear(&it->it_time.it_value);
 timespecclear(&it->it_time.it_interval);
 ITIMER_UNLOCK(it);
 callout_drain(&it->it_callout);
 ITIMER_LOCK(it);
 return (0);
}

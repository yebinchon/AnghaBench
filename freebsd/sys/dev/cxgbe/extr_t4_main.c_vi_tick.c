
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vi_info {int tick; TYPE_1__* pi; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* adapter; } ;


 int callout_schedule (int *,int ) ;
 int hz ;
 int vi_refresh_stats (struct adapter*,struct vi_info*) ;

void
vi_tick(void *arg)
{
 struct vi_info *vi = arg;
 struct adapter *sc = vi->pi->adapter;

 vi_refresh_stats(sc, vi);

 callout_schedule(&vi->tick, hz);
}

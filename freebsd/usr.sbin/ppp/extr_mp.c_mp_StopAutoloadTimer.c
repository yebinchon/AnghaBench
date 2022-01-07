
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int total; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct mp {TYPE_2__ link; } ;


 int throughput_stop (int *) ;

void
mp_StopAutoloadTimer(struct mp *mp)
{
  throughput_stop(&mp->link.stats.total);
}

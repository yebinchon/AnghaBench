
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ SamplePeriod; } ;
struct TYPE_10__ {TYPE_5__ total; } ;
struct TYPE_11__ {TYPE_2__ stats; } ;
struct TYPE_12__ {scalar_t__ period; } ;
struct TYPE_9__ {TYPE_4__ autoload; } ;
struct mp {TYPE_3__ link; int bundle; TYPE_1__ cfg; } ;


 scalar_t__ bundle_WantAutoloadTimer (int ) ;
 int mp_StopAutoloadTimer (struct mp*) ;
 int mp_UpDown ;
 int throughput_callback (TYPE_5__*,int ,struct mp*) ;
 int throughput_destroy (TYPE_5__*) ;
 int throughput_init (TYPE_5__*,scalar_t__) ;
 int throughput_start (TYPE_5__*,char*,int) ;

void
mp_CheckAutoloadTimer(struct mp *mp)
{
  if (mp->link.stats.total.SamplePeriod != mp->cfg.autoload.period) {
    throughput_destroy(&mp->link.stats.total);
    throughput_init(&mp->link.stats.total, mp->cfg.autoload.period);
    throughput_callback(&mp->link.stats.total, mp_UpDown, mp);
  }

  if (bundle_WantAutoloadTimer(mp->bundle))
    throughput_start(&mp->link.stats.total, "MP throughput", 1);
  else
    mp_StopAutoloadTimer(mp);
}

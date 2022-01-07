
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ SamplePeriod; } ;
struct TYPE_8__ {TYPE_5__ total; } ;
struct TYPE_9__ {TYPE_3__ stats; } ;
struct TYPE_6__ {scalar_t__ period; } ;
struct TYPE_7__ {TYPE_1__ autoload; } ;
struct mp {TYPE_4__ link; TYPE_2__ cfg; } ;


 int THROUGHPUT_OVERALL ;
 int mp_CheckAutoloadTimer (struct mp*) ;
 int throughput_clear (TYPE_5__*,int ,int *) ;

void
mp_RestartAutoloadTimer(struct mp *mp)
{
  if (mp->link.stats.total.SamplePeriod != mp->cfg.autoload.period)
    mp_CheckAutoloadTimer(mp);
  else
    throughput_clear(&mp->link.stats.total, THROUGHPUT_OVERALL, ((void*)0));
}

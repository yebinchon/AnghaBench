
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int max; int min; } ;
struct TYPE_15__ {TYPE_6__ autoload; } ;
struct TYPE_10__ {int OctetsPerSecond; } ;
struct TYPE_9__ {int OctetsPerSecond; } ;
struct TYPE_11__ {TYPE_2__ out; TYPE_1__ in; } ;
struct TYPE_12__ {TYPE_3__ total; } ;
struct TYPE_13__ {TYPE_4__ stats; } ;
struct mp {TYPE_8__* bundle; TYPE_7__ cfg; TYPE_5__ link; } ;
struct TYPE_16__ {int bandwidth; } ;


 int AUTO_DOWN ;
 int AUTO_UP ;
 int LogDEBUG ;
 int MAX (int ,int ) ;
 int bundle_AutoAdjust (TYPE_8__*,int,int ) ;
 int log_Printf (int ,char*,int) ;

__attribute__((used)) static void
mp_UpDown(void *v)
{
  struct mp *mp = (struct mp *)v;
  int percent;

  percent = MAX(mp->link.stats.total.in.OctetsPerSecond,
                mp->link.stats.total.out.OctetsPerSecond) * 800 /
            mp->bundle->bandwidth;
  if (percent >= mp->cfg.autoload.max) {
    log_Printf(LogDEBUG, "%d%% saturation - bring a link up ?\n", percent);
    bundle_AutoAdjust(mp->bundle, percent, AUTO_UP);
  } else if (percent <= mp->cfg.autoload.min) {
    log_Printf(LogDEBUG, "%d%% saturation - bring a link down ?\n", percent);
    bundle_AutoAdjust(mp->bundle, percent, AUTO_DOWN);
  }
}

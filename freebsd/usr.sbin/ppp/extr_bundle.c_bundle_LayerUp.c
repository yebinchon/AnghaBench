
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct physical {int dl; } ;
struct fsm {scalar_t__ proto; TYPE_4__* bundle; int link; } ;
struct TYPE_6__ {scalar_t__ sessiontime; } ;
struct TYPE_5__ {int mp; } ;
struct bundle {TYPE_2__ radius; int upat; TYPE_1__ ncp; } ;
struct TYPE_7__ {int mp; } ;
struct TYPE_8__ {TYPE_3__ ncp; } ;


 int EX_NORMAL ;
 scalar_t__ PROTO_CCP ;
 scalar_t__ PROTO_LCP ;
 int bundle_CalculateBandwidth (TYPE_4__*) ;
 int bundle_LinkAdded (struct bundle*,int ) ;
 int bundle_Notify (struct bundle*,int ) ;
 int bundle_StartIdleTimer (struct bundle*,int ) ;
 int bundle_StartSessionTimer (struct bundle*,int ) ;
 scalar_t__ isncp (scalar_t__) ;
 struct physical* link2physical (int ) ;
 int mp_CheckAutoloadTimer (int *) ;
 int ncp_LayersOpen (TYPE_3__*) ;
 int time (int *) ;

__attribute__((used)) static void
bundle_LayerUp(void *v, struct fsm *fp)
{
  struct bundle *bundle = (struct bundle *)v;

  if (fp->proto == PROTO_LCP) {
    struct physical *p = link2physical(fp->link);

    bundle_LinkAdded(bundle, p->dl);
    mp_CheckAutoloadTimer(&bundle->ncp.mp);
  } else if (isncp(fp->proto)) {
    if (ncp_LayersOpen(&fp->bundle->ncp) == 1) {
      bundle_CalculateBandwidth(fp->bundle);
      time(&bundle->upat);

      if (bundle->radius.sessiontime)
        bundle_StartSessionTimer(bundle, 0);

      bundle_StartIdleTimer(bundle, 0);
      mp_CheckAutoloadTimer(&fp->bundle->ncp.mp);
    }
    bundle_Notify(bundle, EX_NORMAL);
  } else if (fp->proto == PROTO_CCP)
    bundle_CalculateBandwidth(fp->bundle);
}

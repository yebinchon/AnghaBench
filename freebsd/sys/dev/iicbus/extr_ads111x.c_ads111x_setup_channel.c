
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ads111x_softc {int dev; struct ads111x_channel* channels; } ;
struct ads111x_channel {int gainidx; int rateidx; int configured; } ;
typedef int chanstr ;


 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int CTLFLAG_SKIP ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct ads111x_softc*,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int ads111x_sysctl_gainidx ;
 int ads111x_sysctl_rateidx ;
 int ads111x_sysctl_voltage ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
ads111x_setup_channel(struct ads111x_softc *sc, int chan, int gainidx, int rateidx)
{
 struct ads111x_channel *c;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *chantree, *devtree;
 char chanstr[4];

 c = &sc->channels[chan];
 c->gainidx = gainidx;
 c->rateidx = rateidx;







 if (c->configured)
  return;

 ctx = device_get_sysctl_ctx(sc->dev);
 devtree = device_get_sysctl_tree(sc->dev);
 snprintf(chanstr, sizeof(chanstr), "%d", chan);
 chantree = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(devtree), OID_AUTO,
     chanstr, CTLFLAG_RD, ((void*)0), "channel data");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(chantree), OID_AUTO,
     "gain_index", CTLTYPE_INT | CTLFLAG_RWTUN, sc, chan,
     ads111x_sysctl_gainidx, "I", "programmable gain amp setting, 0-7");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(chantree), OID_AUTO,
     "rate_index", CTLTYPE_INT | CTLFLAG_RWTUN, sc, chan,
     ads111x_sysctl_rateidx, "I", "sample rate setting, 0-7");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(chantree), OID_AUTO,
     "voltage", CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_SKIP, sc, chan,
     ads111x_sysctl_voltage, "I", "sampled voltage in microvolts");

 c->configured = 1;
}

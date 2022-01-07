
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_stats {int rtsfail; int rts; } ;
struct bwn_softc {int sc_debug; struct bwn_mac* sc_curmac; int sc_dev; } ;
struct bwn_mac {struct bwn_stats mac_stats; } ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
bwn_sysctl_node(struct bwn_softc *sc)
{
 device_t dev = sc->sc_dev;
 struct bwn_mac *mac;
 struct bwn_stats *stats;



 if ((mac = sc->sc_curmac) == ((void*)0))
  return;
 stats = &mac->mac_stats;

 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "linknoise", CTLFLAG_RW, &stats->rts, 0, "Noise level");
 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "rts", CTLFLAG_RW, &stats->rts, 0, "RTS");
 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "rtsfail", CTLFLAG_RW, &stats->rtsfail, 0, "RTS failed to send");






}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union vxlan_sockaddr {int dummy; } vxlan_sockaddr ;
struct vxlan_softc {int vxl_flags; int vxl_ttl; int vxl_max_port; int vxl_min_port; int vxl_ftable_timeout; int vxl_ftable_max; int vxl_ftable_cnt; int vxl_mc_ifindex; int vxl_dst_addr; int vxl_src_addr; int vxl_vni; } ;
struct rm_priotracker {int dummy; } ;
struct TYPE_3__ {int in6; } ;
struct ifvxlancfg {int vxlc_learn; TYPE_1__ vxlc_remote_sa; TYPE_1__ vxlc_local_sa; int vxlc_ttl; int vxlc_port_max; int vxlc_port_min; int vxlc_ftable_timeout; int vxlc_ftable_max; int vxlc_ftable_cnt; int vxlc_mc_ifindex; int vxlc_vni; } ;


 int VXLAN_FLAG_LEARN ;
 int VXLAN_RLOCK (struct vxlan_softc*,struct rm_priotracker*) ;
 int VXLAN_RUNLOCK (struct vxlan_softc*,struct rm_priotracker*) ;
 scalar_t__ VXLAN_SOCKADDR_IS_IPV6 (TYPE_1__*) ;
 int bzero (struct ifvxlancfg*,int) ;
 int memcpy (TYPE_1__*,int *,int) ;
 int sa6_recoverscope (int *) ;

__attribute__((used)) static int
vxlan_ctrl_get_config(struct vxlan_softc *sc, void *arg)
{
 struct rm_priotracker tracker;
 struct ifvxlancfg *cfg;

 cfg = arg;
 bzero(cfg, sizeof(*cfg));

 VXLAN_RLOCK(sc, &tracker);
 cfg->vxlc_vni = sc->vxl_vni;
 memcpy(&cfg->vxlc_local_sa, &sc->vxl_src_addr,
     sizeof(union vxlan_sockaddr));
 memcpy(&cfg->vxlc_remote_sa, &sc->vxl_dst_addr,
     sizeof(union vxlan_sockaddr));
 cfg->vxlc_mc_ifindex = sc->vxl_mc_ifindex;
 cfg->vxlc_ftable_cnt = sc->vxl_ftable_cnt;
 cfg->vxlc_ftable_max = sc->vxl_ftable_max;
 cfg->vxlc_ftable_timeout = sc->vxl_ftable_timeout;
 cfg->vxlc_port_min = sc->vxl_min_port;
 cfg->vxlc_port_max = sc->vxl_max_port;
 cfg->vxlc_learn = (sc->vxl_flags & VXLAN_FLAG_LEARN) != 0;
 cfg->vxlc_ttl = sc->vxl_ttl;
 VXLAN_RUNLOCK(sc, &tracker);
 return (0);
}

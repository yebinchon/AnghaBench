
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lagg_softc {int sc_ifp; } ;
struct lagg_port {struct lagg_softc* lp_softc; } ;
struct lacp_port {int lp_state; TYPE_2__* lp_ifp; struct lagg_port* lp_lagg; } ;
struct TYPE_4__ {void* lpi_portno; void* lpi_prio; } ;
struct TYPE_6__ {int lsi_mac; void* lsi_prio; } ;
struct lacp_peerinfo {int lip_state; TYPE_1__ lip_portid; TYPE_3__ lip_systemid; } ;
struct TYPE_5__ {int if_index; } ;


 int ETHER_ADDR_LEN ;
 int IF_LLADDR (int ) ;
 int LACP_PORT_PRIO ;
 int LACP_SYSTEM_PRIO ;
 void* htons (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void
lacp_fill_actorinfo(struct lacp_port *lp, struct lacp_peerinfo *info)
{
 struct lagg_port *lgp = lp->lp_lagg;
 struct lagg_softc *sc = lgp->lp_softc;

 info->lip_systemid.lsi_prio = htons(LACP_SYSTEM_PRIO);
 memcpy(&info->lip_systemid.lsi_mac,
     IF_LLADDR(sc->sc_ifp), ETHER_ADDR_LEN);
 info->lip_portid.lpi_prio = htons(LACP_PORT_PRIO);
 info->lip_portid.lpi_portno = htons(lp->lp_ifp->if_index);
 info->lip_state = lp->lp_state;
}

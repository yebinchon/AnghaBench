
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lsi_mac; } ;
struct lacp_port {TYPE_1__ lp_systemid; struct ifnet* lp_ifp; } ;
struct lacp_markerinfo {int mi_rq_xid; int mi_rq_system; int mi_rq_port; } ;
struct ifnet {int if_index; } ;


 int ETHER_ADDR_LEN ;
 int htonl (int ) ;
 int htons (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void
lacp_fill_markerinfo(struct lacp_port *lp, struct lacp_markerinfo *info)
{
 struct ifnet *ifp = lp->lp_ifp;


 info->mi_rq_port = htons(ifp->if_index);
 memcpy(&info->mi_rq_system, lp->lp_systemid.lsi_mac, ETHER_ADDR_LEN);
 info->mi_rq_xid = htonl(0);
}

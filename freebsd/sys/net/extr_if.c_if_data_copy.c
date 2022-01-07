
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int (* if_get_counter ) (struct ifnet*,int ) ;int if_lastchange; int if_epoch; int if_hwassist; int if_baudrate; int if_metric; int if_mtu; int if_link_state; int if_hdrlen; int if_addrlen; int if_type; } ;
struct if_data {int ifi_datalen; int ifi_noproto; int ifi_oqdrops; int ifi_iqdrops; int ifi_omcasts; int ifi_imcasts; int ifi_obytes; int ifi_ibytes; int ifi_collisions; int ifi_oerrors; int ifi_opackets; int ifi_ierrors; int ifi_ipackets; int ifi_lastchange; int ifi_epoch; int ifi_hwassist; int ifi_baudrate; int ifi_metric; int ifi_mtu; scalar_t__ ifi_vhid; int ifi_link_state; int ifi_hdrlen; int ifi_addrlen; scalar_t__ ifi_physical; int ifi_type; } ;


 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IBYTES ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IMCASTS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int IFCOUNTER_NOPROTO ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OMCASTS ;
 int IFCOUNTER_OPACKETS ;
 int IFCOUNTER_OQDROPS ;
 int stub1 (struct ifnet*,int ) ;
 int stub10 (struct ifnet*,int ) ;
 int stub11 (struct ifnet*,int ) ;
 int stub12 (struct ifnet*,int ) ;
 int stub2 (struct ifnet*,int ) ;
 int stub3 (struct ifnet*,int ) ;
 int stub4 (struct ifnet*,int ) ;
 int stub5 (struct ifnet*,int ) ;
 int stub6 (struct ifnet*,int ) ;
 int stub7 (struct ifnet*,int ) ;
 int stub8 (struct ifnet*,int ) ;
 int stub9 (struct ifnet*,int ) ;

void
if_data_copy(struct ifnet *ifp, struct if_data *ifd)
{

 ifd->ifi_type = ifp->if_type;
 ifd->ifi_physical = 0;
 ifd->ifi_addrlen = ifp->if_addrlen;
 ifd->ifi_hdrlen = ifp->if_hdrlen;
 ifd->ifi_link_state = ifp->if_link_state;
 ifd->ifi_vhid = 0;
 ifd->ifi_datalen = sizeof(struct if_data);
 ifd->ifi_mtu = ifp->if_mtu;
 ifd->ifi_metric = ifp->if_metric;
 ifd->ifi_baudrate = ifp->if_baudrate;
 ifd->ifi_hwassist = ifp->if_hwassist;
 ifd->ifi_epoch = ifp->if_epoch;
 ifd->ifi_lastchange = ifp->if_lastchange;

 ifd->ifi_ipackets = ifp->if_get_counter(ifp, IFCOUNTER_IPACKETS);
 ifd->ifi_ierrors = ifp->if_get_counter(ifp, IFCOUNTER_IERRORS);
 ifd->ifi_opackets = ifp->if_get_counter(ifp, IFCOUNTER_OPACKETS);
 ifd->ifi_oerrors = ifp->if_get_counter(ifp, IFCOUNTER_OERRORS);
 ifd->ifi_collisions = ifp->if_get_counter(ifp, IFCOUNTER_COLLISIONS);
 ifd->ifi_ibytes = ifp->if_get_counter(ifp, IFCOUNTER_IBYTES);
 ifd->ifi_obytes = ifp->if_get_counter(ifp, IFCOUNTER_OBYTES);
 ifd->ifi_imcasts = ifp->if_get_counter(ifp, IFCOUNTER_IMCASTS);
 ifd->ifi_omcasts = ifp->if_get_counter(ifp, IFCOUNTER_OMCASTS);
 ifd->ifi_iqdrops = ifp->if_get_counter(ifp, IFCOUNTER_IQDROPS);
 ifd->ifi_oqdrops = ifp->if_get_counter(ifp, IFCOUNTER_OQDROPS);
 ifd->ifi_noproto = ifp->if_get_counter(ifp, IFCOUNTER_NOPROTO);
}

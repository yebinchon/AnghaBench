
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {int ether_vtag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_10__ {struct ifnet* ifp; } ;
typedef TYPE_2__ ae_softc_t ;
struct TYPE_11__ {int vlan; int * data; int len; int flags; } ;
typedef TYPE_3__ ae_rxd_t ;


 int AE_LOCK (TYPE_2__*) ;
 int AE_LOCK_ASSERT (TYPE_2__*) ;
 int AE_RXD_HAS_VLAN ;
 int AE_RXD_VLAN (unsigned int) ;
 int AE_UNLOCK (TYPE_2__*) ;
 int ETHER_ALIGN ;
 unsigned int ETHER_CRC_LEN ;
 unsigned int ETHER_MIN_LEN ;
 unsigned int ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int M_VLANTAG ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 unsigned int le16toh (int ) ;
 struct mbuf* m_devget (int *,unsigned int,int ,struct ifnet*,int *) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
ae_rxeof(ae_softc_t *sc, ae_rxd_t *rxd)
{
 struct ifnet *ifp;
 struct mbuf *m;
 unsigned int size;
 uint16_t flags;

 AE_LOCK_ASSERT(sc);

 ifp = sc->ifp;
 flags = le16toh(rxd->flags);




 size = le16toh(rxd->len) - ETHER_CRC_LEN;
 if (size < (ETHER_MIN_LEN - ETHER_CRC_LEN - ETHER_VLAN_ENCAP_LEN)) {
  if_printf(ifp, "Runt frame received.");
  if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
  return;
 }

 m = m_devget(&rxd->data[0], size, ETHER_ALIGN, ifp, ((void*)0));
 if (m == ((void*)0)) {
  if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
  return;
 }

 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0 &&
     (flags & AE_RXD_HAS_VLAN) != 0) {
  m->m_pkthdr.ether_vtag = AE_RXD_VLAN(le16toh(rxd->vlan));
  m->m_flags |= M_VLANTAG;
 }

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);



 AE_UNLOCK(sc);
 (*ifp->if_input)(ifp, m);
 AE_LOCK(sc);
}

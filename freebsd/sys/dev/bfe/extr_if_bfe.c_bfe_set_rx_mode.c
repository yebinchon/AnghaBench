
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int if_flags; } ;
struct bfe_softc {struct ifnet* bfe_ifp; } ;


 int BFE_CAM_CTRL ;
 int BFE_CAM_ENABLE ;
 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int BFE_OR (struct bfe_softc*,int ,int ) ;
 int BFE_RXCONF ;
 int BFE_RXCONF_ALLMULTI ;
 int BFE_RXCONF_DBCAST ;
 int BFE_RXCONF_PROMISC ;
 int CSR_READ_4 (struct bfe_softc*,int ) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int ) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int IF_LLADDR (struct ifnet*) ;
 int bfe_cam_write (struct bfe_softc*,int ,int ) ;
 int bfe_write_maddr ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct bfe_softc*) ;

__attribute__((used)) static void
bfe_set_rx_mode(struct bfe_softc *sc)
{
 struct ifnet *ifp = sc->bfe_ifp;
 u_int32_t val;

 BFE_LOCK_ASSERT(sc);

 val = CSR_READ_4(sc, BFE_RXCONF);

 if (ifp->if_flags & IFF_PROMISC)
  val |= BFE_RXCONF_PROMISC;
 else
  val &= ~BFE_RXCONF_PROMISC;

 if (ifp->if_flags & IFF_BROADCAST)
  val &= ~BFE_RXCONF_DBCAST;
 else
  val |= BFE_RXCONF_DBCAST;


 CSR_WRITE_4(sc, BFE_CAM_CTRL, 0);
 bfe_cam_write(sc, IF_LLADDR(sc->bfe_ifp), 0);

 if (ifp->if_flags & IFF_ALLMULTI)
  val |= BFE_RXCONF_ALLMULTI;
 else {
  val &= ~BFE_RXCONF_ALLMULTI;
  if_foreach_llmaddr(ifp, bfe_write_maddr, sc);
 }

 CSR_WRITE_4(sc, BFE_RXCONF, val);
 BFE_OR(sc, BFE_CAM_CTRL, BFE_CAM_ENABLE);
}

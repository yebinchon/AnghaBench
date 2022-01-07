
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_flags; } ;
struct dc_softc {struct ifnet* dc_ifp; } ;


 int CSR_WRITE_4 (struct dc_softc*,int ,int ) ;
 int DC_AX_FILTDATA ;
 int DC_AX_FILTIDX ;
 int DC_AX_FILTIDX_MAR0 ;
 int DC_AX_FILTIDX_MAR1 ;
 int DC_AX_FILTIDX_PAR0 ;
 int DC_AX_FILTIDX_PAR1 ;
 int DC_AX_NETCFG_RX_BROAD ;
 int DC_CLRBIT (struct dc_softc*,int ,int ) ;
 int DC_NETCFG ;
 int DC_NETCFG_RX_ALLMULTI ;
 int DC_NETCFG_RX_PROMISC ;
 int DC_SETBIT (struct dc_softc*,int ,int ) ;
 int ETHER_ADDR_LEN ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int IF_LLADDR (struct ifnet*) ;
 int bcopy (int ,int *,int ) ;
 int dc_hash_maddr_admtek_be ;
 int if_foreach_llmaddr (struct ifnet*,int ,int *) ;

__attribute__((used)) static void
dc_setfilt_asix(struct dc_softc *sc)
{
 uint32_t eaddr[(ETHER_ADDR_LEN+3)/4];
 struct ifnet *ifp;
 uint32_t hashes[2] = { 0, 0 };

 ifp = sc->dc_ifp;


 bcopy(IF_LLADDR(sc->dc_ifp), eaddr, ETHER_ADDR_LEN);
 CSR_WRITE_4(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_PAR0);
 CSR_WRITE_4(sc, DC_AX_FILTDATA, eaddr[0]);
 CSR_WRITE_4(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_PAR1);
 CSR_WRITE_4(sc, DC_AX_FILTDATA, eaddr[1]);


 if (ifp->if_flags & IFF_PROMISC)
  DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_RX_PROMISC);
 else
  DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_RX_PROMISC);

 if (ifp->if_flags & IFF_ALLMULTI)
  DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_RX_ALLMULTI);
 else
  DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_RX_ALLMULTI);





 if (ifp->if_flags & IFF_BROADCAST)
  DC_SETBIT(sc, DC_NETCFG, DC_AX_NETCFG_RX_BROAD);
 else
  DC_CLRBIT(sc, DC_NETCFG, DC_AX_NETCFG_RX_BROAD);


 CSR_WRITE_4(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_MAR0);
 CSR_WRITE_4(sc, DC_AX_FILTDATA, 0);
 CSR_WRITE_4(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_MAR1);
 CSR_WRITE_4(sc, DC_AX_FILTDATA, 0);





 if (ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI))
  return;


 if_foreach_llmaddr(ifp, dc_hash_maddr_admtek_be, hashes);

 CSR_WRITE_4(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_MAR0);
 CSR_WRITE_4(sc, DC_AX_FILTDATA, hashes[0]);
 CSR_WRITE_4(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_MAR1);
 CSR_WRITE_4(sc, DC_AX_FILTDATA, hashes[1]);
}

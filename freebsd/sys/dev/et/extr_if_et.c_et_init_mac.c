
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ifnet {int if_mtu; } ;
struct et_softc {struct ifnet* ifp; } ;


 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int ET_FRAMELEN (int ) ;
 int ET_IPG ;
 int ET_IPG_B2B_SHIFT ;
 int ET_IPG_MINIFG_SHIFT ;
 int ET_IPG_NONB2B_1_SHIFT ;
 int ET_IPG_NONB2B_2_SHIFT ;
 int ET_MAC_ADDR1 ;
 int ET_MAC_ADDR2 ;
 int ET_MAC_CFG1 ;
 int ET_MAC_CFG1_RST_RXFUNC ;
 int ET_MAC_CFG1_RST_RXMC ;
 int ET_MAC_CFG1_RST_TXFUNC ;
 int ET_MAC_CFG1_RST_TXMC ;
 int ET_MAC_CFG1_SIM_RST ;
 int ET_MAC_CFG1_SOFT_RST ;
 int ET_MAC_CTRL ;
 int ET_MAC_HDX ;
 int ET_MAC_HDX_ALT_BEB_TRUNC_SHIFT ;
 int ET_MAC_HDX_COLLWIN_SHIFT ;
 int ET_MAC_HDX_EXC_DEFER ;
 int ET_MAC_HDX_REXMIT_MAX_SHIFT ;
 int ET_MAX_FRMLEN ;
 int ET_MII_CFG ;
 int ET_MII_CFG_CLKRST ;
 int* IF_LLADDR (struct ifnet*) ;

__attribute__((used)) static void
et_init_mac(struct et_softc *sc)
{
 struct ifnet *ifp;
 const uint8_t *eaddr;
 uint32_t val;


 CSR_WRITE_4(sc, ET_MAC_CFG1,
      ET_MAC_CFG1_RST_TXFUNC | ET_MAC_CFG1_RST_RXFUNC |
      ET_MAC_CFG1_RST_TXMC | ET_MAC_CFG1_RST_RXMC |
      ET_MAC_CFG1_SIM_RST | ET_MAC_CFG1_SOFT_RST);




 val = (56 << ET_IPG_NONB2B_1_SHIFT) |
     (88 << ET_IPG_NONB2B_2_SHIFT) |
     (80 << ET_IPG_MINIFG_SHIFT) |
     (96 << ET_IPG_B2B_SHIFT);
 CSR_WRITE_4(sc, ET_IPG, val);




 val = (10 << ET_MAC_HDX_ALT_BEB_TRUNC_SHIFT) |
     (15 << ET_MAC_HDX_REXMIT_MAX_SHIFT) |
     (55 << ET_MAC_HDX_COLLWIN_SHIFT) |
     ET_MAC_HDX_EXC_DEFER;
 CSR_WRITE_4(sc, ET_MAC_HDX, val);


 CSR_WRITE_4(sc, ET_MAC_CTRL, 0);


 CSR_WRITE_4(sc, ET_MII_CFG, ET_MII_CFG_CLKRST);




 ifp = sc->ifp;
 eaddr = IF_LLADDR(ifp);
 val = eaddr[2] | (eaddr[3] << 8) | (eaddr[4] << 16) | (eaddr[5] << 24);
 CSR_WRITE_4(sc, ET_MAC_ADDR1, val);
 val = (eaddr[0] << 16) | (eaddr[1] << 24);
 CSR_WRITE_4(sc, ET_MAC_ADDR2, val);


 CSR_WRITE_4(sc, ET_MAX_FRMLEN, ET_FRAMELEN(ifp->if_mtu));


 CSR_WRITE_4(sc, ET_MAC_CFG1, 0);
}

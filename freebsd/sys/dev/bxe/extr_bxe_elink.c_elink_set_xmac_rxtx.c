
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct elink_params {struct bxe_softc* sc; scalar_t__ port; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,scalar_t__) ;
 int GRCBASE_XMAC0 ;
 int GRCBASE_XMAC1 ;
 int MISC_REGISTERS_RESET_REG_2_XMAC ;
 int MISC_REG_RESET_REG_2 ;
 int REG_RD (struct bxe_softc*,int) ;
 int REG_WR (struct bxe_softc*,int,int) ;
 int XMAC_CTRL_REG_RX_EN ;
 int XMAC_CTRL_REG_TX_EN ;
 int XMAC_REG_CTRL ;
 int XMAC_REG_PFC_CTRL_HI ;

__attribute__((used)) static void elink_set_xmac_rxtx(struct elink_params *params, uint8_t en)
{
 uint8_t port = params->port;
 struct bxe_softc *sc = params->sc;
 uint32_t pfc_ctrl, xmac_base = (port) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;
 uint32_t val;

 if (REG_RD(sc, MISC_REG_RESET_REG_2) &
     MISC_REGISTERS_RESET_REG_2_XMAC) {




  pfc_ctrl = REG_RD(sc, xmac_base + XMAC_REG_PFC_CTRL_HI);
  REG_WR(sc, xmac_base + XMAC_REG_PFC_CTRL_HI,
         (pfc_ctrl & ~(1<<1)));
  REG_WR(sc, xmac_base + XMAC_REG_PFC_CTRL_HI,
         (pfc_ctrl | (1<<1)));
  ELINK_DEBUG_P1(sc, "Disable XMAC on port %x\n", port);
  val = REG_RD(sc, xmac_base + XMAC_REG_CTRL);
  if (en)
   val |= (XMAC_CTRL_REG_TX_EN | XMAC_CTRL_REG_RX_EN);
  else
   val &= ~(XMAC_CTRL_REG_TX_EN | XMAC_CTRL_REG_RX_EN);
  REG_WR(sc, xmac_base + XMAC_REG_CTRL, val);
 }
}

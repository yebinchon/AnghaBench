
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_softc {int dummy; } ;
struct msk_if_softc {int msk_ifp; int msk_port; struct msk_softc* msk_softc; } ;


 int DELAY (int) ;
 int GMAC_READ_2 (struct msk_softc*,int ,int ) ;
 int GMAC_WRITE_2 (struct msk_softc*,int ,int ,int) ;
 int GM_SMI_CTRL ;
 int GM_SMI_CT_BUSY ;
 int GM_SMI_CT_PHY_AD (int) ;
 int GM_SMI_CT_REG_AD (int) ;
 int GM_SMI_DATA ;
 int MSK_TIMEOUT ;
 int if_printf (int ,char*) ;

__attribute__((used)) static int
msk_phy_writereg(struct msk_if_softc *sc_if, int phy, int reg, int val)
{
 struct msk_softc *sc;
 int i;

 sc = sc_if->msk_softc;

 GMAC_WRITE_2(sc, sc_if->msk_port, GM_SMI_DATA, val);
        GMAC_WRITE_2(sc, sc_if->msk_port, GM_SMI_CTRL,
     GM_SMI_CT_PHY_AD(phy) | GM_SMI_CT_REG_AD(reg));
 for (i = 0; i < MSK_TIMEOUT; i++) {
  DELAY(1);
  if ((GMAC_READ_2(sc, sc_if->msk_port, GM_SMI_CTRL) &
      GM_SMI_CT_BUSY) == 0)
   break;
 }
 if (i == MSK_TIMEOUT)
  if_printf(sc_if->msk_ifp, "phy write timeout\n");

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct msk_softc {int dummy; } ;
struct msk_if_softc {int msk_port; struct msk_softc* msk_softc; } ;


 int GMAC_READ_2 (struct msk_softc*,int ,int ) ;
 int GMAC_WRITE_2 (struct msk_softc*,int ,int ,int) ;
 int GM_PAR_MIB_CLR ;
 int GM_PHY_ADDR ;
 int GM_RXF_UC_OK ;
 int GM_TXE_FIFO_UR ;
 int MSK_IF_LOCK_ASSERT (struct msk_if_softc*) ;
 int MSK_READ_MIB32 (int ,int) ;

__attribute__((used)) static void
msk_stats_clear(struct msk_if_softc *sc_if)
{
 struct msk_softc *sc;
 uint32_t reg;
 uint16_t gmac;
 int i;

 MSK_IF_LOCK_ASSERT(sc_if);

 sc = sc_if->msk_softc;

 gmac = GMAC_READ_2(sc, sc_if->msk_port, GM_PHY_ADDR);
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_PHY_ADDR, gmac | GM_PAR_MIB_CLR);

 for (i = GM_RXF_UC_OK; i <= GM_TXE_FIFO_UR; i += sizeof(uint32_t))
  reg = MSK_READ_MIB32(sc_if->msk_port, i);

 gmac &= ~GM_PAR_MIB_CLR;
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_PHY_ADDR, gmac);
}

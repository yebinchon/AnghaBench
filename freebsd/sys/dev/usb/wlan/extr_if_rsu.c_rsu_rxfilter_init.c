
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rsu_softc {scalar_t__ sc_rx_checksum_enable; } ;


 int R92S_RCR ;
 int R92S_RCR_AICV ;
 int R92S_RCR_APP_PHYSTS ;
 int R92S_RCR_TCP_OFFLD_EN ;
 int RSU_ASSERT_LOCKED (struct rsu_softc*) ;
 int rsu_read_4 (struct rsu_softc*,int ) ;
 int rsu_rxfilter_refresh (struct rsu_softc*) ;
 int rsu_set_multi (struct rsu_softc*) ;
 int rsu_write_4 (struct rsu_softc*,int ,int ) ;

__attribute__((used)) static void
rsu_rxfilter_init(struct rsu_softc *sc)
{
 uint32_t reg;

 RSU_ASSERT_LOCKED(sc);


 rsu_set_multi(sc);


 reg = rsu_read_4(sc, R92S_RCR);
 reg &= ~R92S_RCR_AICV;
 reg |= R92S_RCR_APP_PHYSTS;
 if (sc->sc_rx_checksum_enable)
  reg |= R92S_RCR_TCP_OFFLD_EN;
 rsu_write_4(sc, R92S_RCR, reg);


 rsu_rxfilter_refresh(sc);
}

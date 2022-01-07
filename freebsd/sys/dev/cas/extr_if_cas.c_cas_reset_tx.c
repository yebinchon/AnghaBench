
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas_softc {int sc_flags; int sc_dev; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CAS_BARRIER (struct cas_softc*,int ,int,int) ;
 int CAS_RESET ;
 int CAS_RESET_PCS_DIS ;
 int CAS_RESET_TX ;
 int CAS_SERDES ;
 int CAS_TX_CONF ;
 int CAS_TX_CONF_TXDMA_EN ;
 int CAS_WRITE_4 (struct cas_softc*,int ,int) ;
 int cas_bitwait (struct cas_softc*,int ,int,int ) ;
 int cas_disable_tx (struct cas_softc*) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
cas_reset_tx(struct cas_softc *sc)
{





 (void)cas_disable_tx(sc);
 CAS_WRITE_4(sc, CAS_TX_CONF, 0);
 CAS_BARRIER(sc, CAS_TX_CONF, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 if (!cas_bitwait(sc, CAS_TX_CONF, CAS_TX_CONF_TXDMA_EN, 0))
  device_printf(sc->sc_dev, "cannot disable TX DMA\n");


 CAS_WRITE_4(sc, CAS_RESET, CAS_RESET_TX |
     ((sc->sc_flags & CAS_SERDES) != 0 ? CAS_RESET_PCS_DIS : 0));
 CAS_BARRIER(sc, CAS_RESET, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 if (!cas_bitwait(sc, CAS_RESET, CAS_RESET_TX, 0)) {
  device_printf(sc->sc_dev, "cannot reset transmitter\n");
  return (1);
 }
 return (0);
}

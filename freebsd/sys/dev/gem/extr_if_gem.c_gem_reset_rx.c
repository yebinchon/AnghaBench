
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem_softc {scalar_t__ sc_variant; int sc_dev; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int DELAY (int) ;
 int GEM_BANK1_BARRIER (struct gem_softc*,int ,int,int) ;
 int GEM_BANK1_BITWAIT (struct gem_softc*,int ,int,int ) ;
 int GEM_BANK1_WRITE_4 (struct gem_softc*,int ,int) ;
 int GEM_BANK2_BARRIER (struct gem_softc*,int ,int,int) ;
 int GEM_BANK2_BITWAIT (struct gem_softc*,int ,int,int ) ;
 int GEM_BANK2_WRITE_4 (struct gem_softc*,int ,int) ;
 int GEM_ERI_CACHE_LINE_SIZE ;
 int GEM_MAC_RXRESET ;
 int GEM_RESET ;
 int GEM_RESET_CLSZ_SHFT ;
 int GEM_RESET_RX ;
 int GEM_RX_CONFIG ;
 int GEM_RX_CONFIG_RXDMA_EN ;
 scalar_t__ GEM_SUN_ERI ;
 int device_printf (int ,char*) ;
 int gem_disable_rx (struct gem_softc*) ;

__attribute__((used)) static int
gem_reset_rx(struct gem_softc *sc)
{





 (void)gem_disable_rx(sc);
 GEM_BANK1_WRITE_4(sc, GEM_RX_CONFIG, 0);
 GEM_BANK1_BARRIER(sc, GEM_RX_CONFIG, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 if (!GEM_BANK1_BITWAIT(sc, GEM_RX_CONFIG, GEM_RX_CONFIG_RXDMA_EN, 0))
  device_printf(sc->sc_dev, "cannot disable RX DMA\n");


 DELAY(5000);


 GEM_BANK2_WRITE_4(sc, GEM_RESET, GEM_RESET_RX |
     (sc->sc_variant == GEM_SUN_ERI ? GEM_ERI_CACHE_LINE_SIZE <<
     GEM_RESET_CLSZ_SHFT : 0));
 GEM_BANK2_BARRIER(sc, GEM_RESET, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 if (!GEM_BANK2_BITWAIT(sc, GEM_RESET, GEM_RESET_RX, 0)) {
  device_printf(sc->sc_dev, "cannot reset receiver\n");
  return (1);
 }


 GEM_BANK1_WRITE_4(sc, GEM_MAC_RXRESET, 1);
 GEM_BANK1_BARRIER(sc, GEM_MAC_RXRESET, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 if (!GEM_BANK1_BITWAIT(sc, GEM_MAC_RXRESET, 1, 0)) {
  device_printf(sc->sc_dev, "cannot reset RX MAC\n");
  return (1);
 }

 return (0);
}

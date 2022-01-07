
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem_softc {int sc_dev; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int GEM_BANK1_BARRIER (struct gem_softc*,int ,int,int) ;
 scalar_t__ GEM_BANK1_BITWAIT (struct gem_softc*,int ,int,int ) ;
 int GEM_BANK1_READ_4 (struct gem_softc*,int ) ;
 int GEM_BANK1_WRITE_4 (struct gem_softc*,int ,int) ;
 int GEM_MAC_TX_CONFIG ;
 int GEM_MAC_TX_ENABLE ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
gem_disable_tx(struct gem_softc *sc)
{

 GEM_BANK1_WRITE_4(sc, GEM_MAC_TX_CONFIG,
     GEM_BANK1_READ_4(sc, GEM_MAC_TX_CONFIG) & ~GEM_MAC_TX_ENABLE);
 GEM_BANK1_BARRIER(sc, GEM_MAC_TX_CONFIG, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 if (GEM_BANK1_BITWAIT(sc, GEM_MAC_TX_CONFIG, GEM_MAC_TX_ENABLE, 0))
  return (1);
 device_printf(sc->sc_dev, "cannot disable TX MAC\n");
 return (0);
}

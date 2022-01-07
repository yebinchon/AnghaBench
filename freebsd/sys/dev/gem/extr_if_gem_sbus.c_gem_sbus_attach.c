
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gem_softc {int * sc_res; int sc_ih; int sc_enaddr; int sc_flags; int sc_dev; int sc_variant; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int GEM_BANK2_READ_4 (struct gem_softc*,int ) ;
 int GEM_BANK2_WRITE_4 (struct gem_softc*,int ,int ) ;
 int GEM_LOCK_DESTROY (struct gem_softc*) ;
 int GEM_LOCK_INIT (struct gem_softc*,int ) ;
 size_t GEM_RES_INTR ;
 int GEM_SBUS_BIF_RESET ;
 int GEM_SBUS_CFG_64BIT ;
 int GEM_SBUS_CFG_BURST_32 ;
 int GEM_SBUS_CFG_BURST_64 ;
 int GEM_SBUS_CFG_PARITY ;
 int GEM_SBUS_CONFIG ;
 int GEM_SERDES ;
 int GEM_SUN_GEM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int OF_getetheraddr (int ,int ) ;
 int SBUS_BURST64_MASK ;
 int SBUS_BURST64_SHIFT ;
 int SBUS_BURST_32 ;
 int SBUS_BURST_64 ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct gem_softc*,int *) ;
 int device_get_nameunit (int ) ;
 struct gem_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ gem_attach (struct gem_softc*) ;
 int gem_detach (struct gem_softc*) ;
 int gem_intr ;
 int gem_sbus_res_spec ;
 int sbus_get_burstsz (int ) ;

__attribute__((used)) static int
gem_sbus_attach(device_t dev)
{
 struct gem_softc *sc;
 int burst;
 uint32_t val;

 sc = device_get_softc(dev);
 sc->sc_variant = GEM_SUN_GEM;
 sc->sc_dev = dev;

 sc->sc_flags = GEM_SERDES;

 if (bus_alloc_resources(dev, gem_sbus_res_spec, sc->sc_res)) {
  device_printf(dev, "failed to allocate resources\n");
  bus_release_resources(dev, gem_sbus_res_spec, sc->sc_res);
  return (ENXIO);
 }

 GEM_LOCK_INIT(sc, device_get_nameunit(dev));

 OF_getetheraddr(dev, sc->sc_enaddr);

 burst = sbus_get_burstsz(dev);
 val = GEM_SBUS_CFG_PARITY;
 if ((burst & SBUS_BURST64_MASK) != 0) {
  val |= GEM_SBUS_CFG_64BIT;
  burst >>= SBUS_BURST64_SHIFT;
 }
 if ((burst & SBUS_BURST_64) != 0)
  val |= GEM_SBUS_CFG_BURST_64;
 else if ((burst & SBUS_BURST_32) != 0)
  val |= GEM_SBUS_CFG_BURST_32;
 else {
  device_printf(dev, "unsupported burst size\n");
  goto fail;
 }

 (void)GEM_BANK2_READ_4(sc, GEM_SBUS_BIF_RESET);
 DELAY(100);
 GEM_BANK2_WRITE_4(sc, GEM_SBUS_CONFIG, val);

 if (gem_attach(sc) != 0) {
  device_printf(dev, "could not be attached\n");
  goto fail;
 }

 if (bus_setup_intr(dev, sc->sc_res[GEM_RES_INTR], INTR_TYPE_NET |
     INTR_MPSAFE, ((void*)0), gem_intr, sc, &sc->sc_ih) != 0) {
  device_printf(dev, "failed to set up interrupt\n");
  gem_detach(sc);
  goto fail;
 }
 return (0);

 fail:
 GEM_LOCK_DESTROY(sc);
 bus_release_resources(dev, gem_sbus_res_spec, sc->sc_res);
 return (ENXIO);
}

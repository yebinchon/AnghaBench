
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {int io_res; int io_rid; } ;
typedef int device_t ;


 int ENOENT ;
 int ENXIO ;
 int ISA_PNP_PROBE (int ,int ,int ) ;
 int RF_ACTIVE ;
 int SBNI_PORTS ;
 int SYS_RES_IOPORT ;
 int bus_alloc_resource_anywhere (int ,int ,int *,int ,int ) ;
 int device_get_parent (int ) ;
 struct sbni_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int printf (char*) ;
 int sbni_ids ;
 scalar_t__ sbni_probe (struct sbni_softc*) ;
 int sbni_release_resources (struct sbni_softc*) ;

__attribute__((used)) static int
sbni_probe_isa(device_t dev)
{
 struct sbni_softc *sc;
 int error;

 error = ISA_PNP_PROBE(device_get_parent(dev), dev, sbni_ids);
 if (error && error != ENOENT)
  return (error);

 sc = device_get_softc(dev);

  sc->io_res = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT,
        &sc->io_rid, SBNI_PORTS,
        RF_ACTIVE);
 if (!sc->io_res) {
  printf("sbni: cannot allocate io ports!\n");
  return (ENOENT);
 }

 if (sbni_probe(sc) != 0) {
  sbni_release_resources(sc);
  return (ENXIO);
 }

 device_set_desc(dev, "Granch SBNI12/ISA adapter");
 return (0);
}

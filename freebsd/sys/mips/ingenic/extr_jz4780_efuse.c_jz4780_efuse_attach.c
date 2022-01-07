
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_efuse_softc {int res; int data; int dev; } ;
typedef int device_t ;


 int CSR_WRITE_4 (struct jz4780_efuse_softc*,int ,int) ;
 int ENXIO ;
 int JZ_EFUCFG ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resources (int ,int ,int ) ;
 struct jz4780_efuse_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int jz4780_efuse_read (struct jz4780_efuse_softc*,int,int *,int) ;
 int jz4780_efuse_spec ;
 int jz4780_efuse_update_kenv (struct jz4780_efuse_softc*) ;

__attribute__((used)) static int
jz4780_efuse_attach(device_t dev)
{
 struct jz4780_efuse_softc *sc;

  sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, jz4780_efuse_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }





 CSR_WRITE_4(sc, JZ_EFUCFG, 0x00040000);


 jz4780_efuse_read(sc, 0x18, &sc->data, sizeof(sc->data));





 jz4780_efuse_update_kenv(sc);


 bus_release_resources(dev, jz4780_efuse_spec, sc->res);
 return (0);
}

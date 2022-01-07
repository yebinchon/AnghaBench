
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz8995ma_softc {int dummy; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int KSZ8995MA_CHIP_ID ;
 int KSZ8995MA_CHIP_ID_MASK ;
 int KSZ8995MA_CID0 ;
 int KSZ8995MA_CID1 ;
 int KSZ8995MA_FAMILI_ID ;
 scalar_t__ bootverbose ;
 int bzero (struct ksz8995ma_softc*,int) ;
 struct ksz8995ma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;
 int device_set_desc_copy (int ,char*) ;
 int ksz8995ma_readreg (int ,int ) ;

__attribute__((used)) static int
ksz8995ma_probe(device_t dev)
{
 int id0, id1;
 struct ksz8995ma_softc *sc;

 sc = device_get_softc(dev);
 bzero(sc, sizeof(*sc));

 id0 = ksz8995ma_readreg(dev, KSZ8995MA_CID0);
 id1 = ksz8995ma_readreg(dev, KSZ8995MA_CID1);
 if (bootverbose)
  device_printf(dev,"Chip Identifier Register %x %x\n", id0, id1);


 if (id0 != KSZ8995MA_FAMILI_ID || (id1 & KSZ8995MA_CHIP_ID_MASK) !=
     KSZ8995MA_CHIP_ID) {
  return (ENXIO);
 }

 device_set_desc_copy(dev, "Micrel KSZ8995MA SPI switch driver");
 return (BUS_PROBE_DEFAULT);
}

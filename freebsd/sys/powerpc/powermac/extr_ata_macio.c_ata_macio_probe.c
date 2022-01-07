
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_macio_softc {int rev; int max_mode; } ;
typedef int device_t ;


 int ATA_UDMA4 ;
 int ATA_WDMA2 ;
 int ENXIO ;
 int ata_probe (int ) ;
 int bzero (struct ata_macio_softc*,int) ;
 struct ata_macio_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 char* ofw_bus_get_type (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ata_macio_probe(device_t dev)
{
 const char *type = ofw_bus_get_type(dev);
 const char *name = ofw_bus_get_name(dev);
 struct ata_macio_softc *sc;

 if (strcmp(type, "ata") != 0 &&
     strcmp(type, "ide") != 0)
  return (ENXIO);

 sc = device_get_softc(dev);
 bzero(sc, sizeof(struct ata_macio_softc));

 if (strcmp(name,"ata-4") == 0) {
  device_set_desc(dev,"Apple MacIO Ultra ATA Controller");
  sc->rev = 4;
  sc->max_mode = ATA_UDMA4;
 } else {
  device_set_desc(dev,"Apple MacIO ATA Controller");
  sc->rev = 3;
  sc->max_mode = ATA_WDMA2;
 }

 return (ata_probe(dev));
}

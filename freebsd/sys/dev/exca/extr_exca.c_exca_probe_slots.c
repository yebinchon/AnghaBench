
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exca_softc {size_t chipset; int putb; int getb; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int ENXIO ;
 int EXCA_NSLOTS ;
 int EXCA_SOCKET_SIZE ;
 int * chip_names ;
 int device_set_desc (int ,int ) ;
 int exca_init (struct exca_softc*,int ,int ,int ,int) ;
 int exca_io_getb ;
 int exca_io_putb ;
 scalar_t__ exca_valid_slot (struct exca_softc*) ;

int
exca_probe_slots(device_t dev, struct exca_softc *exca, bus_space_tag_t iot,
    bus_space_handle_t ioh)
{
 int err;
 int i;

 err = ENXIO;
 for (i = 0; i < EXCA_NSLOTS; i++) {
  exca_init(&exca[i], dev, iot, ioh, i * EXCA_SOCKET_SIZE);
  exca->getb = exca_io_getb;
  exca->putb = exca_io_putb;
  if (exca_valid_slot(&exca[i])) {
   device_set_desc(dev, chip_names[exca[i].chipset]);
   err = 0;
  }
 }
 return (err);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct ofw_pcib_gen_softc {TYPE_1__ ops_pcib_sc; } ;
typedef int device_t ;


 int PCIB_SUBTRACTIVE ;
 int PCIR_PRIBUS_1 ;
 int PCIR_SECBUS_1 ;


 struct ofw_pcib_gen_softc* device_get_softc (int ) ;
 int ofw_pcib_gen_setup (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_vendor (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int pcib_attach_child (int ) ;
 int pcib_attach_common (int ) ;

__attribute__((used)) static int
ofw_pcib_attach(device_t dev)
{
 struct ofw_pcib_gen_softc *sc;

 sc = device_get_softc(dev);

 switch (pci_get_devid(dev)) {






 case 129:
  sc->ops_pcib_sc.flags |= PCIB_SUBTRACTIVE;
  break;
 }

 switch (pci_get_vendor(dev)) {





 case 128:
  pci_write_config(dev, PCIR_PRIBUS_1,
      pci_read_config(dev, PCIR_SECBUS_1, 1) << 8 |
      pci_read_config(dev, PCIR_PRIBUS_1, 1), 2);
  break;
 }

 ofw_pcib_gen_setup(dev);
 pcib_attach_common(dev);
 return (pcib_attach_child(dev));
}

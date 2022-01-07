
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m3_card_type {scalar_t__ pci_id; int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int CALL ;
 int ENXIO ;
 int M3_DEBUG (int ,char*) ;
 int device_set_desc (int ,int ) ;
 struct m3_card_type* m3_card_types ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
m3_pci_probe(device_t dev)
{
 struct m3_card_type *card;

 M3_DEBUG(CALL, ("m3_pci_probe(0x%x)\n", pci_get_devid(dev)));

 for (card = m3_card_types ; card->pci_id ; card++) {
  if (pci_get_devid(dev) == card->pci_id) {
   device_set_desc(dev, card->name);
   return BUS_PROBE_DEFAULT;
  }
 }
 return ENXIO;
}

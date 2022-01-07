
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ device; scalar_t__ subdevice; } ;


 int PCIR_DEVICE ;
 int PCIR_SUBDEV_0 ;
 TYPE_1__* emu_bad_cards ;
 TYPE_1__* emu_cards ;
 int nitems (TYPE_1__*) ;
 scalar_t__ pci_read_config (int ,int ,int) ;

__attribute__((used)) static unsigned int
emu_getcard(device_t dev)
{
 uint16_t device;
 uint16_t subdevice;
 unsigned int thiscard;
 int i;

 device = pci_read_config(dev, PCIR_DEVICE, 2);
 subdevice = pci_read_config(dev, PCIR_SUBDEV_0, 2);

 thiscard = 0;
 for (i = 1; i < nitems(emu_cards); i++) {
  if (device == emu_cards[i].device) {
   if (subdevice == emu_cards[i].subdevice) {
    thiscard = i;
    break;
   }
   if (0x0000 == emu_cards[i].subdevice) {
    thiscard = i;




   }
  }
 }

 for (i = 0; i < nitems(emu_bad_cards); i++) {
  if (device == emu_bad_cards[i].device) {
   if (subdevice == emu_bad_cards[i].subdevice) {
    thiscard = 0;
    break;
   }
   if (0x0000 == emu_bad_cards[i].subdevice) {
    thiscard = 0;
    break;
   }
  }
 }
 return (thiscard);
}

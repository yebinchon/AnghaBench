
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ subvendor; scalar_t__ subdevice; int name; } ;


 int ENXIO ;
 scalar_t__ PCID_ENVY24HT ;
 scalar_t__ PCIV_ENVY24 ;
 TYPE_1__* cfg_table ;
 int device_set_desc (int ,int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int printf (char*) ;

__attribute__((used)) static int
envy24ht_pci_probe(device_t dev)
{
 u_int16_t sv, sd;
 int i;




 if (pci_get_device(dev) == PCID_ENVY24HT &&
     pci_get_vendor(dev) == PCIV_ENVY24) {
  sv = pci_get_subvendor(dev);
  sd = pci_get_subdevice(dev);
  for (i = 0; cfg_table[i].subvendor != 0 || cfg_table[i].subdevice != 0; i++) {
   if (cfg_table[i].subvendor == sv &&
       cfg_table[i].subdevice == sd) {
    break;
   }
  }
  device_set_desc(dev, cfg_table[i].name);



  return 0;
 }
 else {



  return ENXIO;
 }
}

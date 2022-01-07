
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct an_type {scalar_t__ an_vid; scalar_t__ an_did; int * an_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct an_type* an_devs ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
an_probe_pci(device_t dev)
{
 struct an_type *t;
 uint16_t vid, did;

 t = an_devs;
 vid = pci_get_vendor(dev);
 did = pci_get_device(dev);

 while (t->an_name != ((void*)0)) {
  if (vid == t->an_vid &&
      did == t->an_did) {
   device_set_desc(dev, t->an_name);
   return(BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return(ENXIO);
}

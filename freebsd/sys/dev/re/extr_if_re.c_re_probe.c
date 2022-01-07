
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct rl_type {scalar_t__ rl_vid; scalar_t__ rl_did; int rl_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ LINKSYS_DEVICEID_EG1032 ;
 scalar_t__ LINKSYS_SUBDEVICE_EG1032_REV3 ;
 scalar_t__ LINKSYS_VENDORID ;
 scalar_t__ RT_DEVICEID_8139 ;
 scalar_t__ RT_VENDORID ;
 int device_set_desc (int ,int ) ;
 int nitems (struct rl_type*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct rl_type* re_devs ;

__attribute__((used)) static int
re_probe(device_t dev)
{
 const struct rl_type *t;
 uint16_t devid, vendor;
 uint16_t revid, sdevid;
 int i;

 vendor = pci_get_vendor(dev);
 devid = pci_get_device(dev);
 revid = pci_get_revid(dev);
 sdevid = pci_get_subdevice(dev);

 if (vendor == LINKSYS_VENDORID && devid == LINKSYS_DEVICEID_EG1032) {
  if (sdevid != LINKSYS_SUBDEVICE_EG1032_REV3) {




   return (ENXIO);
  }
 }

 if (vendor == RT_VENDORID && devid == RT_DEVICEID_8139) {
  if (revid != 0x20) {

   return (ENXIO);
  }
 }

 t = re_devs;
 for (i = 0; i < nitems(re_devs); i++, t++) {
  if (vendor == t->rl_vid && devid == t->rl_did) {
   device_set_desc(dev, t->rl_name);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}

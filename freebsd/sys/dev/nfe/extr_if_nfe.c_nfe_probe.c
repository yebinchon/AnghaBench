
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_type {scalar_t__ vid_id; scalar_t__ dev_id; int * name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 struct nfe_type* nfe_devs ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
nfe_probe(device_t dev)
{
 struct nfe_type *t;

 t = nfe_devs;

 while (t->name != ((void*)0)) {
  if ((pci_get_vendor(dev) == t->vid_id) &&
      (pci_get_device(dev) == t->dev_id)) {
   device_set_desc(dev, t->name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}

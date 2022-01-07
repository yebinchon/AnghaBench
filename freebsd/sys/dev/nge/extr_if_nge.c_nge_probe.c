
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_type {scalar_t__ nge_vid; scalar_t__ nge_did; int * nge_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 struct nge_type* nge_devs ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
nge_probe(device_t dev)
{
 const struct nge_type *t;

 t = nge_devs;

 while (t->nge_name != ((void*)0)) {
  if ((pci_get_vendor(dev) == t->nge_vid) &&
      (pci_get_device(dev) == t->nge_did)) {
   device_set_desc(dev, t->nge_name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}

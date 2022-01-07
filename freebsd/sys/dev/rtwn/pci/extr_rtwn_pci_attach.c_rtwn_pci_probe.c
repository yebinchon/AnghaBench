
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_pci_ident {int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct rtwn_pci_ident* rtwn_pci_probe_sub (int ) ;

__attribute__((used)) static int
rtwn_pci_probe(device_t dev)
{
 const struct rtwn_pci_ident *ident;

 ident = rtwn_pci_probe_sub(dev);
 if (ident != ((void*)0)) {
  device_set_desc(dev, ident->name);
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_ident {int desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct mpr_ident* mpr_find_ident (int ) ;

__attribute__((used)) static int
mpr_pci_probe(device_t dev)
{
 struct mpr_ident *id;

 if ((id = mpr_find_ident(dev)) != ((void*)0)) {
  device_set_desc(dev, id->desc);
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}

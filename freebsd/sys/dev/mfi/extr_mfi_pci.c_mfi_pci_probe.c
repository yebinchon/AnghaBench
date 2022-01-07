
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_ident {int flags; int desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_LOW_PRIORITY ;
 int ENXIO ;
 int MFI_FLAGS_MRSAS ;
 int device_set_desc (int ,int ) ;
 struct mfi_ident* mfi_find_ident (int ) ;
 scalar_t__ mfi_mrsas_enable ;

__attribute__((used)) static int
mfi_pci_probe(device_t dev)
{
 struct mfi_ident *id;

 if ((id = mfi_find_ident(dev)) != ((void*)0)) {
  device_set_desc(dev, id->desc);


  if ((id->flags & MFI_FLAGS_MRSAS) && mfi_mrsas_enable)
   return (BUS_PROBE_LOW_PRIORITY);
  else
   return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}

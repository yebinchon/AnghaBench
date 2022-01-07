
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_pci_device {int quirks; int desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int BWN_QUIRK_UNTESTED ;
 int ENXIO ;
 int attach_untested ;
 scalar_t__ bwn_pci_find_devcfg (int ,int *,struct bwn_pci_device const**) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
bwn_pci_probe(device_t dev)
{
 const struct bwn_pci_device *ident;

 if (bwn_pci_find_devcfg(dev, ((void*)0), &ident))
  return (ENXIO);


 if (ident->quirks & BWN_QUIRK_UNTESTED && !attach_untested)
  return (ENXIO);

 device_set_desc(dev, ident->desc);
 return (BUS_PROBE_DEFAULT);
}

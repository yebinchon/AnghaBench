
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_pci_chip {int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 scalar_t__ sym_find_firmware (struct sym_pci_chip const*) ;
 struct sym_pci_chip* sym_find_pci_chip (int ) ;

__attribute__((used)) static int
sym_pci_probe(device_t dev)
{
 const struct sym_pci_chip *chip;

 chip = sym_find_pci_chip(dev);
 if (chip && sym_find_firmware(chip)) {
  device_set_desc(dev, chip->name);
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}

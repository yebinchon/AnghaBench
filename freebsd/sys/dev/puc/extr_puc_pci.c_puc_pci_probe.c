
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_cfg {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int PCIM_HDRTYPE ;
 int PCIR_HDRTYPE ;
 int pci_read_config (int ,int ,int) ;
 int puc_bfe_probe (int ,struct puc_cfg const*) ;
 int puc_pci_devices ;
 struct puc_cfg* puc_pci_match (int ,int ) ;

__attribute__((used)) static int
puc_pci_probe(device_t dev)
{
 const struct puc_cfg *desc;

 if ((pci_read_config(dev, PCIR_HDRTYPE, 1) & PCIM_HDRTYPE) != 0)
  return (ENXIO);

 desc = puc_pci_match(dev, puc_pci_devices);
 if (desc == ((void*)0))
  return (ENXIO);
 return (puc_bfe_probe(dev, desc));
}

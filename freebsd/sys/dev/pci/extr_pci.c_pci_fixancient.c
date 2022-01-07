
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdrtype; scalar_t__ baseclass; scalar_t__ subclass; } ;
typedef TYPE_1__ pcicfgregs ;


 scalar_t__ PCIC_BRIDGE ;
 int PCIM_HDRTYPE ;
 int PCIM_HDRTYPE_BRIDGE ;
 int PCIM_HDRTYPE_NORMAL ;
 scalar_t__ PCIS_BRIDGE_PCI ;

__attribute__((used)) static void
pci_fixancient(pcicfgregs *cfg)
{
 if ((cfg->hdrtype & PCIM_HDRTYPE) != PCIM_HDRTYPE_NORMAL)
  return;


 if (cfg->baseclass == PCIC_BRIDGE && cfg->subclass == PCIS_BRIDGE_PCI)
  cfg->hdrtype = PCIM_HDRTYPE_BRIDGE;
}

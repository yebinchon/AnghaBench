
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ CFGMECH_NONE ;
 int MTX_SPIN ;
 int PRVERB (char*) ;
 scalar_t__ cfgmech ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_pir_open () ;
 int pcibios_get_version () ;
 int pcicfg_mtx ;
 scalar_t__ pcireg_cfgopen () ;

int
pci_cfgregopen(void)
{
 uint16_t v;
 static int opened = 0;

 if (opened)
  return (1);

 if (cfgmech == CFGMECH_NONE && pcireg_cfgopen() == 0)
  return (0);

 v = pcibios_get_version();
 if (v > 0)
  PRVERB(("pcibios: BIOS version %x.%02x\n", (v & 0xff00) >> 8,
      v & 0xff));
 mtx_init(&pcicfg_mtx, "pcicfg", ((void*)0), MTX_SPIN);
 opened = 1;


 if (v >= 0x0210)
  pci_pir_open();

 return (1);
}

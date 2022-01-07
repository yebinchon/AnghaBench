
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int intline; int dev; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 int PCIR_BAR (int) ;
 int PCIR_CACHELNSZ ;
 int PCIR_INTLINE ;
 int PCIR_LATTIMER ;
 int PCIR_MAXLAT ;
 int PCIR_MAX_BAR_0 ;
 int PCIR_MINGNT ;
 int device_get_parent (int ) ;
 int pci_get_irq (int ) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
cardbus_device_setup_regs(pcicfgregs *cfg)
{
 device_t dev = cfg->dev;
 int i;





 for (i = 0; i < PCIR_MAX_BAR_0; i++)
  pci_write_config(dev, PCIR_BAR(i), 0, 4);

 cfg->intline =
     pci_get_irq(device_get_parent(device_get_parent(dev)));
 pci_write_config(dev, PCIR_INTLINE, cfg->intline, 1);
 pci_write_config(dev, PCIR_CACHELNSZ, 0x08, 1);
 pci_write_config(dev, PCIR_LATTIMER, 0xa8, 1);
 pci_write_config(dev, PCIR_MINGNT, 0x14, 1);
 pci_write_config(dev, PCIR_MAXLAT, 0x14, 1);
}

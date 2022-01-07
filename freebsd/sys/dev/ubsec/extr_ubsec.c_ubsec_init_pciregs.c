
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int device_t ;
struct TYPE_2__ {int pa_tag; } ;


 int BS_RTY_TOUT ;
 int PCIR_CACHELNSZ ;
 int UBS_DEF_CACHELINE ;
 int UBS_DEF_RTY ;
 int UBS_DEF_TOUT ;
 int UBS_PCI_RTY_MASK ;
 int UBS_PCI_RTY_SHIFT ;
 int UBS_PCI_TOUT_MASK ;
 int UBS_PCI_TOUT_SHIFT ;
 TYPE_1__* pa ;
 int pc ;
 int pci_conf_read (int ,int ,int ) ;
 int pci_conf_write (int ,int ,int ,int) ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static void
ubsec_init_pciregs(device_t dev)
{
 pci_write_config(dev, PCIR_CACHELNSZ, UBS_DEF_CACHELINE, 1);
}

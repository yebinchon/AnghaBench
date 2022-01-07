
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pcix_location; int pcix_command; } ;
struct TYPE_4__ {TYPE_1__ pcix; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef int device_t ;


 scalar_t__ PCIXR_COMMAND ;
 int pci_read_config (int ,scalar_t__,int) ;

__attribute__((used)) static void
pci_cfg_save_pcix(device_t dev, struct pci_devinfo *dinfo)
{
 dinfo->cfg.pcix.pcix_command = pci_read_config(dev,
     dinfo->cfg.pcix.pcix_location + PCIXR_COMMAND, 2);
}

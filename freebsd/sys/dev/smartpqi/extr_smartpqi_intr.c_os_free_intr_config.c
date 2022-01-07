
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ msi_enabled; int pqi_dev; } ;
struct TYPE_5__ {TYPE_1__ os_specific; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
typedef int device_t ;


 int DBG_FUNC (char*) ;
 scalar_t__ FALSE ;
 int pci_release_msi (int ) ;

void os_free_intr_config(pqisrc_softstate_t *softs)
{
 device_t dev;
 dev = softs->os_specific.pqi_dev;

 DBG_FUNC("IN\n");

        if (softs->os_specific.msi_enabled) {
                pci_release_msi(dev);
                softs->os_specific.msi_enabled = FALSE;
        }

 DBG_FUNC("OUT\n");
}

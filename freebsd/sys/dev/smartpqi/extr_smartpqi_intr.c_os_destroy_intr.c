
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ msi_enabled; int pqi_dev; } ;
struct TYPE_7__ {scalar_t__ intr_type; TYPE_1__ os_specific; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
typedef int device_t ;


 int DBG_FUNC (char*) ;
 scalar_t__ FALSE ;
 scalar_t__ INTR_TYPE_FIXED ;
 scalar_t__ INTR_TYPE_MSIX ;
 int PQI_STATUS_SUCCESS ;
 int deregister_pqi_intx (TYPE_2__*) ;
 int deregister_pqi_msix (TYPE_2__*) ;
 int pci_release_msi (int ) ;

int os_destroy_intr(pqisrc_softstate_t *softs)
{
 device_t dev;
 dev = softs->os_specific.pqi_dev;

 DBG_FUNC("IN\n");

 if (softs->intr_type == INTR_TYPE_FIXED) {
  deregister_pqi_intx(softs);
 } else if (softs->intr_type == INTR_TYPE_MSIX) {
  deregister_pqi_msix(softs);
 }
 if (softs->os_specific.msi_enabled) {
  pci_release_msi(dev);
  softs->os_specific.msi_enabled = FALSE;
 }

 DBG_FUNC("OUT\n");

 return PQI_STATUS_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* msi_enabled; int pqi_dev; } ;
struct TYPE_5__ {int num_cpus_online; int intr_count; scalar_t__ intr_type; TYPE_1__ os_specific; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
typedef int device_t ;


 int DBG_FUNC (char*) ;
 scalar_t__ INTR_TYPE_FIXED ;
 scalar_t__ INTR_TYPE_MSI ;
 scalar_t__ INTR_TYPE_MSIX ;
 int PQI_MAX_MSIX ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 void* TRUE ;
 int device_printf (int ,char*,...) ;
 int pci_alloc_msi (int ,int*) ;
 int pci_alloc_msix (int ,int*) ;
 int pci_msix_count (int ) ;
 int pci_release_msi (int ) ;

int os_get_intr_config(pqisrc_softstate_t *softs)
{
 device_t dev;
 int msi_count = 0;
 int error = 0;
 int ret = PQI_STATUS_SUCCESS;
 dev = softs->os_specific.pqi_dev;

 DBG_FUNC("IN\n");

 msi_count = pci_msix_count(dev);

 if (msi_count > softs->num_cpus_online)
  msi_count = softs->num_cpus_online;
 if (msi_count > PQI_MAX_MSIX)
  msi_count = PQI_MAX_MSIX;
 if (msi_count == 0 || (error = pci_alloc_msix(dev, &msi_count)) != 0) {
  device_printf(dev, "alloc msix failed - msi_count=%d, err=%d; "
                                   "will try MSI\n", msi_count, error);
  pci_release_msi(dev);
 } else {
  softs->intr_count = msi_count;
  softs->intr_type = INTR_TYPE_MSIX;
  softs->os_specific.msi_enabled = TRUE;
  device_printf(dev, "using MSI-X interrupts (%d vectors)\n",
   msi_count);
 }
 if (!softs->intr_type) {
  msi_count = 1;
  if ((error = pci_alloc_msi(dev, &msi_count)) != 0) {
   device_printf(dev, "alloc msi failed - err=%d; "
    "will use INTx\n", error);
   pci_release_msi(dev);
  } else {
   softs->os_specific.msi_enabled = TRUE;
   softs->intr_count = msi_count;
   softs->intr_type = INTR_TYPE_MSI;
   device_printf(dev, "using MSI interrupts\n");
  }
 }

 if (!softs->intr_type) {
  device_printf(dev, "using legacy interrupts\n");
  softs->intr_type = INTR_TYPE_FIXED;
  softs->intr_count = 1;
 }

 if(!softs->intr_type) {
  DBG_FUNC("OUT failed\n");
  ret = PQI_STATUS_FAILURE;
  return ret;
 }
 DBG_FUNC("OUT\n");
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_sc {int dev; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 int ACPI_SUCCESS (int ) ;
 int AcpiWalkResources (int ,char*,int ,void*) ;
 int RD4 (struct tpm_sc*,int ) ;
 int TPM_INT_ENABLE ;
 int TPM_INT_ENABLE_CMD_RDY ;
 int TPM_INT_ENABLE_DATA_AVAIL ;
 int TPM_INT_ENABLE_GLOBAL_ENABLE ;
 int TPM_INT_ENABLE_LOC_CHANGE ;
 int TPM_INT_ENABLE_STS_VALID ;
 int WR4 (struct tpm_sc*,int ,int) ;
 int acpi_get_handle (int ) ;
 int tpmtis_get_SIRQ_channel ;
 int tpmtis_relinquish_locality (struct tpm_sc*) ;
 int tpmtis_request_locality (struct tpm_sc*,int ) ;

__attribute__((used)) static bool
tpmtis_setup_intr(struct tpm_sc *sc)
{
 ACPI_STATUS status;
 ACPI_HANDLE handle;
 uint32_t irq_mask;

 handle = acpi_get_handle(sc->dev);

 if(!tpmtis_request_locality(sc, 0))
  return (0);

 irq_mask = RD4(sc, TPM_INT_ENABLE);
 irq_mask |= TPM_INT_ENABLE_GLOBAL_ENABLE |
     TPM_INT_ENABLE_DATA_AVAIL |
     TPM_INT_ENABLE_LOC_CHANGE |
     TPM_INT_ENABLE_CMD_RDY |
     TPM_INT_ENABLE_STS_VALID;
 WR4(sc, TPM_INT_ENABLE, irq_mask);

 status = AcpiWalkResources(handle, "_CRS",
     tpmtis_get_SIRQ_channel, (void *)sc);

 tpmtis_relinquish_locality(sc);

 return (ACPI_SUCCESS(status));
}

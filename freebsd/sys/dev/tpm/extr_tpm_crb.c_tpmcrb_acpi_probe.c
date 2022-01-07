
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ StartMethod; } ;
typedef TYPE_1__ ACPI_TABLE_TPM23 ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ID_PROBE (int ,int ,int ,int *) ;
 int ACPI_SIG_TPM2 ;
 int AcpiGetTable (int ,int,int **) ;
 int ENXIO ;
 scalar_t__ TPM2_START_METHOD_CRB ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int tpmcrb_ids ;

__attribute__((used)) static int
tpmcrb_acpi_probe(device_t dev)
{
 int err;
 ACPI_TABLE_TPM23 *tbl;
 ACPI_STATUS status;
 err = ACPI_ID_PROBE(device_get_parent(dev), dev, tpmcrb_ids, ((void*)0));
 if (err > 0)
  return (err);

 status = AcpiGetTable(ACPI_SIG_TPM2, 1, (ACPI_TABLE_HEADER **) &tbl);
 if(ACPI_FAILURE(status) ||
    tbl->StartMethod != TPM2_START_METHOD_CRB)
  err = ENXIO;

 device_set_desc(dev, "Trusted Platform Module 2.0, CRB mode");
 return (err);
}

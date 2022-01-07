
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nvdimm_root_dev {int dummy; } ;
typedef int device_t ;
struct TYPE_4__ {int Header; } ;
typedef TYPE_1__ ACPI_TABLE_NFIT ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_NFIT ;
 int AcpiGetTable (int ,int,int **) ;
 int AcpiPutTable (int *) ;
 int ENXIO ;
 int bus_generic_attach (int ) ;
 struct nvdimm_root_dev* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int nvdimm_root_create_devs (int ,TYPE_1__*) ;
 int nvdimm_root_create_spas (struct nvdimm_root_dev*,TYPE_1__*) ;

__attribute__((used)) static int
nvdimm_root_attach(device_t dev)
{
 struct nvdimm_root_dev *root;
 ACPI_TABLE_NFIT *nfitbl;
 ACPI_STATUS status;
 int error;

 status = AcpiGetTable(ACPI_SIG_NFIT, 1, (ACPI_TABLE_HEADER **)&nfitbl);
 if (ACPI_FAILURE(status)) {
  device_printf(dev, "cannot get NFIT\n");
  return (ENXIO);
 }
 error = nvdimm_root_create_devs(dev, nfitbl);
 if (error != 0)
  return (error);
 error = bus_generic_attach(dev);
 if (error != 0)
  return (error);
 root = device_get_softc(dev);
 error = nvdimm_root_create_spas(root, nfitbl);
 AcpiPutTable(&nfitbl->Header);
 return (error);
}

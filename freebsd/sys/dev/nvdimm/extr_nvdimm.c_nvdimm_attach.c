
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvdimm_dev {int nv_flush_addr_cnt; int nv_flush_addr; int nv_handle; int nv_dev; } ;
typedef int device_t ;
struct TYPE_3__ {int Header; } ;
typedef TYPE_1__ ACPI_TABLE_NFIT ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_NFIT ;
 int AcpiGetTable (int ,int,int **) ;
 int AcpiPutTable (int *) ;
 int ENXIO ;
 int MPASS (int ) ;
 int acpi_nfit_get_flush_addrs (TYPE_1__*,int ,int *,int *) ;
 scalar_t__ bootverbose ;
 struct nvdimm_dev* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * nvdimm_root_get_acpi_handle (int ) ;
 int nvdimm_root_get_device_handle (int ) ;
 int read_label_area_size (struct nvdimm_dev*) ;
 int read_labels (struct nvdimm_dev*) ;

__attribute__((used)) static int
nvdimm_attach(device_t dev)
{
 struct nvdimm_dev *nv;
 ACPI_TABLE_NFIT *nfitbl;
 ACPI_HANDLE handle;
 ACPI_STATUS status;
 int error;

 nv = device_get_softc(dev);
 handle = nvdimm_root_get_acpi_handle(dev);
 MPASS(handle != ((void*)0));
 nv->nv_dev = dev;
 nv->nv_handle = nvdimm_root_get_device_handle(dev);

 status = AcpiGetTable(ACPI_SIG_NFIT, 1, (ACPI_TABLE_HEADER **)&nfitbl);
 if (ACPI_FAILURE(status)) {
  if (bootverbose)
   device_printf(dev, "cannot get NFIT\n");
  return (ENXIO);
 }
 acpi_nfit_get_flush_addrs(nfitbl, nv->nv_handle, &nv->nv_flush_addr,
     &nv->nv_flush_addr_cnt);
 AcpiPutTable(&nfitbl->Header);
 error = read_label_area_size(nv);
 if (error == 0) {




  read_labels(nv);
 }
 return (0);
}

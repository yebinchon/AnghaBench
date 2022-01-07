
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfit_handle_t ;
typedef int * device_t ;
typedef int ACPI_TABLE_NFIT ;
typedef int * ACPI_HANDLE ;


 int * BUS_ADD_CHILD (int *,int,char*,int) ;
 int ENXIO ;
 int M_NVDIMM_ACPI ;
 int M_WAITOK ;
 int M_ZERO ;
 int NVDIMM_ROOT_IVAR_MAX ;
 int * acpi_get_handle (int *) ;
 int acpi_nfit_get_dimm_ids (int *,int **,int*) ;
 int device_printf (int *,char*) ;
 int device_set_ivars (int *,uintptr_t*) ;
 int free (int *,int ) ;
 int * get_dimm_acpi_handle (int *,int ) ;
 uintptr_t* mallocarray (int ,int,int ,int) ;
 int nvdimm_root_set_acpi_handle (int *,int *) ;
 int nvdimm_root_set_device_handle (int *,int ) ;

__attribute__((used)) static int
nvdimm_root_create_devs(device_t dev, ACPI_TABLE_NFIT *nfitbl)
{
 ACPI_HANDLE root_handle, dimm_handle;
 device_t child;
 nfit_handle_t *dimm_ids, *dimm;
 uintptr_t *ivars;
 int num_dimm_ids;

 root_handle = acpi_get_handle(dev);
 acpi_nfit_get_dimm_ids(nfitbl, &dimm_ids, &num_dimm_ids);
 for (dimm = dimm_ids; dimm < dimm_ids + num_dimm_ids; dimm++) {
  dimm_handle = get_dimm_acpi_handle(root_handle, *dimm);
  if (dimm_handle == ((void*)0))
   continue;

  child = BUS_ADD_CHILD(dev, 100, "nvdimm", -1);
  if (child == ((void*)0)) {
   device_printf(dev, "failed to create nvdimm\n");
   return (ENXIO);
  }
  ivars = mallocarray(NVDIMM_ROOT_IVAR_MAX, sizeof(uintptr_t),
      M_NVDIMM_ACPI, M_ZERO | M_WAITOK);
  device_set_ivars(child, ivars);
  nvdimm_root_set_acpi_handle(child, dimm_handle);
  nvdimm_root_set_device_handle(child, *dimm);
 }
 free(dimm_ids, M_NVDIMM_ACPI);
 return (0);
}

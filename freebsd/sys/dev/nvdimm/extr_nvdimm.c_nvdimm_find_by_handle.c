
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_dev {int dummy; } ;
typedef scalar_t__ nfit_handle_t ;
typedef int device_t ;


 int M_TEMP ;
 int devclass_get_devices (int ,int **,int*) ;
 struct nvdimm_dev* device_get_softc (int ) ;
 int free (int *,int ) ;
 int nvdimm_devclass ;
 scalar_t__ nvdimm_root_get_device_handle (int ) ;

struct nvdimm_dev *
nvdimm_find_by_handle(nfit_handle_t nv_handle)
{
 struct nvdimm_dev *res;
 device_t *dimms;
 int i, error, num_dimms;

 res = ((void*)0);
 error = devclass_get_devices(nvdimm_devclass, &dimms, &num_dimms);
 if (error != 0)
  return (((void*)0));
 for (i = 0; i < num_dimms; i++) {
  if (nvdimm_root_get_device_handle(dimms[i]) == nv_handle) {
   res = device_get_softc(dimms[i]);
   break;
  }
 }
 free(dimms, M_TEMP);
 return (res);
}

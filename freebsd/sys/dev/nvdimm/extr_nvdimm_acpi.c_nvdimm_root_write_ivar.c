
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENOENT ;
 int NVDIMM_ROOT_IVAR_MAX ;
 scalar_t__ device_get_ivars (int ) ;

__attribute__((used)) static int
nvdimm_root_write_ivar(device_t dev, device_t child, int index,
    uintptr_t value)
{

 if (index < 0 || index >= NVDIMM_ROOT_IVAR_MAX)
  return (ENOENT);
 ((uintptr_t *)device_get_ivars(child))[index] = value;
 return (0);
}

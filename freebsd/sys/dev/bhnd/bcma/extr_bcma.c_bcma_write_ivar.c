
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_devinfo {void* pmu_info; } ;
typedef int device_t ;
 int EINVAL ;
 int ENOENT ;
 struct bcma_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static int
bcma_write_ivar(device_t dev, device_t child, int index, uintptr_t value)
{
 struct bcma_devinfo *dinfo;

 dinfo = device_get_ivars(child);

 switch (index) {
 case 129:
 case 134:
 case 131:
 case 133:
 case 128:
 case 132:
 case 136:
 case 135:
  return (EINVAL);
 case 130:
  dinfo->pmu_info = (void *)value;
  return (0);
 default:
  return (ENOENT);
 }
}

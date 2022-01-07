
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hv_storage_type { ____Placeholder_hv_storage_type } hv_storage_type ;
typedef int device_t ;


 int DRIVER_BLKVSC ;
 int DRIVER_STORVSC ;
 int DRIVER_UNKNOWN ;
 scalar_t__ VMBUS_PROBE_GUID (int ,int ,int *) ;
 int device_get_parent (int ) ;
 int gBlkVscDeviceType ;
 int gStorVscDeviceType ;

__attribute__((used)) static enum hv_storage_type
storvsc_get_storage_type(device_t dev)
{
 device_t parent = device_get_parent(dev);

 if (VMBUS_PROBE_GUID(parent, dev, &gBlkVscDeviceType) == 0)
  return DRIVER_BLKVSC;
 if (VMBUS_PROBE_GUID(parent, dev, &gStorVscDeviceType) == 0)
  return DRIVER_STORVSC;
 return DRIVER_UNKNOWN;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_ic_desc {int * ic_desc; int ic_guid; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ VMBUS_PROBE_GUID (int ,int ,int *) ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,int *) ;
 scalar_t__ resource_disabled (int ,int ) ;

int
vmbus_ic_probe(device_t dev, const struct vmbus_ic_desc descs[])
{
 device_t bus = device_get_parent(dev);
 const struct vmbus_ic_desc *d;

 if (resource_disabled(device_get_name(dev), 0))
  return (ENXIO);

 for (d = descs; d->ic_desc != ((void*)0); ++d) {
  if (VMBUS_PROBE_GUID(bus, dev, &d->ic_guid) == 0) {
   device_set_desc(dev, d->ic_desc);
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}

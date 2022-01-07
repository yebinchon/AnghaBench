
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ VMBUS_PROBE_GUID (int ,int ,int *) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int hn_guid ;

__attribute__((used)) static int
hn_probe(device_t dev)
{

 if (VMBUS_PROBE_GUID(device_get_parent(dev), dev, &hn_guid) == 0) {
  device_set_desc(dev, "Hyper-V Network Interface");
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}

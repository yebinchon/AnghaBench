
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int VMBUS_ET_NAME ;
 int device_set_desc (int ,char*) ;
 scalar_t__ resource_disabled (int ,int ) ;

__attribute__((used)) static int
vmbus_et_probe(device_t dev)
{
 if (resource_disabled(VMBUS_ET_NAME, 0))
  return (ENXIO);

 device_set_desc(dev, "Hyper-V event timer");

 return (BUS_PROBE_NOWILDCARD);
}

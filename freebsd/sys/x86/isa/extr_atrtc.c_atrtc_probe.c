
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_LOW_PRIORITY ;
 int ENOENT ;
 int ENXIO ;
 int ISA_PNP_PROBE (int ,int ,int ) ;
 scalar_t__ atrtc_acpi_disabled () ;
 int atrtc_enabled ;
 int atrtc_ids ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
atrtc_probe(device_t dev)
{
 int result;

 if ((atrtc_enabled == -1 && atrtc_acpi_disabled()) ||
     (atrtc_enabled == 0))
  return (ENXIO);

 result = ISA_PNP_PROBE(device_get_parent(dev), dev, atrtc_ids);

 if (result == ENOENT) {
  device_set_desc(dev, "AT realtime clock");
  return (BUS_PROBE_LOW_PRIORITY);
 }
 return (result);
}

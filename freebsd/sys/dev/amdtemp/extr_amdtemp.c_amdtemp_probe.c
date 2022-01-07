
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int CPUID_STEPPING ;
 int CPUID_TO_FAMILY (int) ;
 int CPUID_TO_MODEL (int) ;
 int ENXIO ;
 int amdtemp_match (int ,int *) ;
 int cpu_id ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
amdtemp_probe(device_t dev)
{
 uint32_t family, model;

 if (resource_disabled("amdtemp", 0))
  return (ENXIO);
 if (!amdtemp_match(device_get_parent(dev), ((void*)0)))
  return (ENXIO);

 family = CPUID_TO_FAMILY(cpu_id);
 model = CPUID_TO_MODEL(cpu_id);

 switch (family) {
 case 0x0f:
  if ((model == 0x04 && (cpu_id & CPUID_STEPPING) == 0) ||
      (model == 0x05 && (cpu_id & CPUID_STEPPING) <= 1))
   return (ENXIO);
  break;
 case 0x10:
 case 0x11:
 case 0x12:
 case 0x14:
 case 0x15:
 case 0x16:
 case 0x17:
  break;
 default:
  return (ENXIO);
 }
 device_set_desc(dev, "AMD CPU On-Die Thermal Sensors");

 return (BUS_PROBE_GENERIC);
}

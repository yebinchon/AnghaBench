
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;
typedef int buf ;


 int BUS_PROBE_GENERIC ;
 int CPUID_TO_FAMILY (int ) ;
 int ENXIO ;
 int amdsmn_match (int ,int *) ;
 int cpu_id ;
 int device_get_parent (int ) ;
 int device_set_desc_copy (int ,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
amdsmn_probe(device_t dev)
{
 uint32_t family;
 char buf[64];

 if (resource_disabled("amdsmn", 0))
  return (ENXIO);
 if (!amdsmn_match(device_get_parent(dev), ((void*)0)))
  return (ENXIO);

 family = CPUID_TO_FAMILY(cpu_id);

 switch (family) {
 case 0x15:
 case 0x17:
  break;
 default:
  return (ENXIO);
 }
 snprintf(buf, sizeof(buf), "AMD Family %xh System Management Network",
     family);
 device_set_desc_copy(dev, buf);

 return (BUS_PROBE_GENERIC);
}

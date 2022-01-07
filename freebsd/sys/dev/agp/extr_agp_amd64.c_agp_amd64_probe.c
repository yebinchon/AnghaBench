
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 char* agp_amd64_match (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char const*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
agp_amd64_probe(device_t dev)
{
 const char *desc;

 if (resource_disabled("agp", device_get_unit(dev)))
  return (ENXIO);
 if ((desc = agp_amd64_match(dev))) {
  device_set_desc(dev, desc);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}

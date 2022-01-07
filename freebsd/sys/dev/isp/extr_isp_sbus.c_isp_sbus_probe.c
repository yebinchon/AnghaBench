
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int ISP_CORE_VERSION_MAJOR ;
 int ISP_CORE_VERSION_MINOR ;
 int ISP_PLATFORM_VERSION_MAJOR ;
 int ISP_PLATFORM_VERSION_MINOR ;
 scalar_t__ bootverbose ;
 scalar_t__ isp_announced ;
 char* ofw_bus_get_name (int ) ;
 int printf (char*,int,int,int,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
isp_sbus_probe(device_t dev)
{
 int found = 0;
 const char *name = ofw_bus_get_name(dev);
 if (strcmp(name, "SUNW,isp") == 0 ||
     strcmp(name, "QLGC,isp") == 0 ||
     strcmp(name, "ptisp") == 0 ||
     strcmp(name, "PTI,ptisp") == 0) {
  found++;
 }
 if (!found)
  return (ENXIO);

 if (isp_announced == 0 && bootverbose) {
  printf("Qlogic ISP Driver, FreeBSD Version %d.%d, "
      "Core Version %d.%d\n",
      ISP_PLATFORM_VERSION_MAJOR, ISP_PLATFORM_VERSION_MINOR,
      ISP_CORE_VERSION_MAJOR, ISP_CORE_VERSION_MINOR);
  isp_announced++;
 }
 return (0);
}

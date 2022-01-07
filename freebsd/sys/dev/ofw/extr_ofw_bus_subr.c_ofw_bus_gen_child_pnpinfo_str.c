
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_name (int ) ;
 int ofw_bus_status_okay (int ) ;
 int strlcat (char*,char*,size_t) ;

int
ofw_bus_gen_child_pnpinfo_str(device_t cbdev, device_t child, char *buf,
    size_t buflen)
{

 *buf = '\0';
 if (!ofw_bus_status_okay(child))
  return (0);

 if (ofw_bus_get_name(child) != ((void*)0)) {
  strlcat(buf, "name=", buflen);
  strlcat(buf, ofw_bus_get_name(child), buflen);
 }

 if (ofw_bus_get_compat(child) != ((void*)0)) {
  strlcat(buf, " compat=", buflen);
  strlcat(buf, ofw_bus_get_compat(child), buflen);
 }

 return (0);
}

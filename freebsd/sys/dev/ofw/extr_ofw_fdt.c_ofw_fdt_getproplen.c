
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ssize_t ;
typedef int phandle_t ;
typedef int ofw_t ;
typedef int cell_t ;


 int fdt_get_name (int ,int,int*) ;
 void* fdt_getprop (int ,int,char const*,int*) ;
 int fdt_num_mem_rsv (int ) ;
 int fdt_path_offset (int ,char*) ;
 int fdt_phandle_offset (int ) ;
 int fdtp ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static ssize_t
ofw_fdt_getproplen(ofw_t ofw, phandle_t package, const char *propname)
{
 const void *prop;
 int offset, len;

 offset = fdt_phandle_offset(package);
 if (offset < 0)
  return (-1);

 len = -1;
 prop = fdt_getprop(fdtp, offset, propname, &len);

 if (prop == ((void*)0) && strcmp(propname, "name") == 0) {

  fdt_get_name(fdtp, offset, &len);
  return (len + 1);
 }

 if (prop == ((void*)0) && offset == fdt_path_offset(fdtp, "/chosen")) {
  if (strcmp(propname, "fdtbootcpu") == 0)
   return (sizeof(cell_t));
  if (strcmp(propname, "fdtmemreserv") == 0)
   return (sizeof(uint64_t)*2*fdt_num_mem_rsv(fdtp));
 }

 if (prop == ((void*)0))
  return (-1);

 return (len);
}

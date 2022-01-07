
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int ofw_t ;


 int fdt_offset_phandle (int) ;
 int fdt_path_offset (int ,char const*) ;
 int fdtp ;

__attribute__((used)) static phandle_t
ofw_fdt_finddevice(ofw_t ofw, const char *device)
{
 int offset;

 offset = fdt_path_offset(fdtp, device);
 if (offset < 0)
  return (-1);
 return (fdt_offset_phandle(offset));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int ofw_t ;


 int fdt_phandle_offset (int ) ;
 int fdt_setprop (int ,int,char const*,void const*,size_t) ;
 scalar_t__ fdt_setprop_inplace (int ,int,char const*,void const*,size_t) ;
 int fdtp ;

__attribute__((used)) static int
ofw_fdt_setprop(ofw_t ofw, phandle_t package, const char *propname,
    const void *buf, size_t len)
{
 int offset;

 offset = fdt_phandle_offset(package);
 if (offset < 0)
  return (-1);

 if (fdt_setprop_inplace(fdtp, offset, propname, buf, len) != 0)

  return (fdt_setprop(fdtp, offset, propname, buf, len));

 return (0);
}

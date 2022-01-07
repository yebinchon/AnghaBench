
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int ofw_t ;


 int fdt_offset_phandle (int) ;
 int fdt_parent_offset (int ,int) ;
 int fdt_phandle_offset (int ) ;
 int fdtp ;

__attribute__((used)) static phandle_t
ofw_fdt_parent(ofw_t ofw, phandle_t node)
{
 int offset, paroffset;

 offset = fdt_phandle_offset(node);
 if (offset < 0)
  return (0);

 paroffset = fdt_parent_offset(fdtp, offset);
 return (fdt_offset_phandle(paroffset));
}

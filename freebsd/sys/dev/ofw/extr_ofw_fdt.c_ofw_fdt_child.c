
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int ofw_t ;


 int fdt_first_subnode (int ,int) ;
 int fdt_offset_phandle (int) ;
 int fdt_phandle_offset (int ) ;
 int fdtp ;

__attribute__((used)) static phandle_t
ofw_fdt_child(ofw_t ofw, phandle_t node)
{
 int offset;

 offset = fdt_phandle_offset(node);
 if (offset < 0)
  return (0);
 offset = fdt_first_subnode(fdtp, offset);
 return (fdt_offset_phandle(offset));
}

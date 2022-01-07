
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int ofw_t ;


 int fdt_next_subnode (int ,int) ;
 scalar_t__ fdt_offset_phandle (int) ;
 int fdt_path_offset (int ,char*) ;
 int fdt_phandle_offset (scalar_t__) ;
 int fdtp ;

__attribute__((used)) static phandle_t
ofw_fdt_peer(ofw_t ofw, phandle_t node)
{
 int offset;

 if (node == 0) {

  offset = fdt_path_offset(fdtp, "/");

  return (fdt_offset_phandle(offset));
 }

 offset = fdt_phandle_offset(node);
 if (offset < 0)
  return (0);
 offset = fdt_next_subnode(fdtp, offset);
 return (fdt_offset_phandle(offset));
}

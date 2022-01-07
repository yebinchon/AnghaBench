
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;


 int OF_getencprop (int ,char*,int*,int) ;

__attribute__((used)) static void
get_addr_props(phandle_t node, uint32_t *addrp, uint32_t *sizep)
{

 *addrp = 2;
 *sizep = 1;
 OF_getencprop(node, "#address-cells", addrp, sizeof(*addrp));
 OF_getencprop(node, "#size-cells", sizep, sizeof(*sizep));
}

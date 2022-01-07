
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int type ;
typedef int size ;
typedef int phandle_t ;
typedef int addr ;


 int OF_getencprop (int ,char*,int*,int) ;
 int OF_getprop (int ,char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
get_addr_props(phandle_t node, uint32_t *addrp, uint32_t *sizep, int *pcip)
{
 char type[64];
 uint32_t addr, size;
 int pci, res;

 res = OF_getencprop(node, "#address-cells", &addr, sizeof(addr));
 if (res == -1)
  addr = 2;
 res = OF_getencprop(node, "#size-cells", &size, sizeof(size));
 if (res == -1)
  size = 1;
 pci = 0;
 if (addr == 3 && size == 2) {
  res = OF_getprop(node, "device_type", type, sizeof(type));
  if (res != -1) {
   type[sizeof(type) - 1] = '\0';
   if (strcmp(type, "pci") == 0 ||
       strcmp(type, "pciex")== 0)
    pci = 1;
  }
 }
 if (addrp != ((void*)0))
  *addrp = addr;
 if (sizep != ((void*)0))
  *sizep = size;
 if (pcip != ((void*)0))
  *pcip = pci;
}

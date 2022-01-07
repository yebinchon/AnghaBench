
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int szc ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int paddrc ;
typedef int name ;
typedef int bus_addr_t ;
typedef int banks ;
typedef int addrc ;


 int ENXIO ;
 int MIN (int,int) ;
 int NEXUS_BUS_SPACE ;


 int OF_getprop (scalar_t__,char*,...) ;
 scalar_t__ OF_parent (scalar_t__) ;
 int PCI_IO_BUS_SPACE ;
 int PCI_MEMORY_BUS_SPACE ;
 int SBUS_BUS_SPACE ;
 int phys_hi_mask_space (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

int
OF_decode_addr(phandle_t node, int bank, int *space, bus_addr_t *addr)
{
 char name[32];
 uint64_t cend, cstart, end, phys, pphys, sz, start;
 pcell_t addrc, szc, paddrc;
 phandle_t bus, lbus, pbus;
 uint32_t banks[10 * 5];
 uint32_t cspc, pspc, spc;
 int i, j, nbank;
 bus = OF_parent(node);
 if (bus == 0)
  return (ENXIO);
 if (OF_getprop(bus, "name", name, sizeof(name)) == -1)
  return (ENXIO);
 name[sizeof(name) - 1] = '\0';
 if (OF_getprop(bus, "#address-cells", &addrc, sizeof(addrc)) == -1)
  addrc = 2;
 if (OF_getprop(bus, "#size-cells", &szc, sizeof(szc)) == -1)
  szc = 1;
 if (addrc < 2 || addrc > 3 || szc < 1 || szc > 2)
  return (ENXIO);
 if (strcmp(name, "pci") == 0) {
  if (addrc > 3)
   return (ENXIO);
  nbank = OF_getprop(node, "assigned-addresses", &banks,
      sizeof(banks));
 } else {
  if (addrc > 2)
   return (ENXIO);
  nbank = OF_getprop(node, "reg", &banks, sizeof(banks));
 }
 if (nbank == -1)
  return (ENXIO);
 nbank /= sizeof(banks[0]) * (addrc + szc);
 if (bank < 0 || bank > nbank - 1)
  return (ENXIO);
 bank *= addrc + szc;
 spc = phys_hi_mask_space(name, banks[bank]);

 bank += addrc - 2;
 phys = 0;
 for (i = 0; i < MIN(2, addrc); i++)
  phys = ((uint64_t)phys << 32) | banks[bank++];
 sz = 0;
 for (i = 0; i < szc; i++)
  sz = ((uint64_t)sz << 32) | banks[bank++];
 start = phys;
 end = phys + sz - 1;
 cspc = 0;
 lbus = bus;
 while ((pbus = OF_parent(bus)) != 0) {
  if (OF_getprop(pbus, "#address-cells", &paddrc,
      sizeof(paddrc)) == -1)
   paddrc = 2;
  if (paddrc < 2 || paddrc > 3)
   return (ENXIO);
  nbank = OF_getprop(bus, "ranges", &banks, sizeof(banks));
  if (nbank == -1) {
   if (OF_getprop(pbus, "name", name, sizeof(name)) == -1)
    return (ENXIO);
   name[sizeof(name) - 1] = '\0';
   goto skip;
  }
  if (OF_getprop(bus, "#size-cells", &szc, sizeof(szc)) == -1)
   szc = 1;
  if (szc < 1 || szc > 2)
   return (ENXIO);
  nbank /= sizeof(banks[0]) * (addrc + paddrc + szc);
  bank = 0;
  for (i = 0; i < nbank; i++) {
   cspc = phys_hi_mask_space(name, banks[bank]);
   if (cspc != spc) {
    bank += addrc + paddrc + szc;
    continue;
   }

   bank += addrc - 2;
   phys = 0;
   for (j = 0; j < MIN(2, addrc); j++)
    phys = ((uint64_t)phys << 32) | banks[bank++];
   pspc = banks[bank];

   bank += paddrc - 2;
   pphys = 0;
   for (j = 0; j < MIN(2, paddrc); j++)
    pphys =
        ((uint64_t)pphys << 32) | banks[bank++];
   sz = 0;
   for (j = 0; j < szc; j++)
    sz = ((uint64_t)sz << 32) | banks[bank++];
   cstart = phys;
   cend = phys + sz - 1;
   if (start < cstart || start > cend)
    continue;
   if (end < cstart || end > cend)
    return (ENXIO);
   if (OF_getprop(pbus, "name", name, sizeof(name)) == -1)
    return (ENXIO);
   name[sizeof(name) - 1] = '\0';
   spc = phys_hi_mask_space(name, pspc);
   start += pphys - cstart;
   end += pphys - cstart;
   break;
  }
  if (i == nbank)
   return (ENXIO);
  lbus = bus;
 skip:
  addrc = paddrc;
  bus = pbus;
 }

 *addr = start;

 if (OF_parent(lbus) == 0) {
  *space = NEXUS_BUS_SPACE;
  return (0);
 }
 if (OF_getprop(lbus, "name", name, sizeof(name)) == -1)
  return (ENXIO);
 name[sizeof(name) - 1] = '\0';
 if (strcmp(name, "central") == 0 || strcmp(name, "ebus") == 0 ||
     strcmp(name, "upa") == 0) {
  *space = NEXUS_BUS_SPACE;
  return (0);
 } else if (strcmp(name, "pci") == 0) {
  switch (cspc) {
  case 129:
   *space = PCI_IO_BUS_SPACE;
   return (0);
  case 128:
   *space = PCI_MEMORY_BUS_SPACE;
   return (0);
  }
 } else if (strcmp(name, "sbus") == 0) {
  *space = SBUS_BUS_SPACE;
  return (0);
 }
 return (ENXIO);
}

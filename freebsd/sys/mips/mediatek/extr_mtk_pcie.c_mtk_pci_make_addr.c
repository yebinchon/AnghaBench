
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
mtk_pci_make_addr(int bus, int slot, int func, int reg)
{
 uint32_t addr;

 addr = ((((reg & 0xf00) >> 8) << 24) | (bus << 16) | (slot << 11) |
  (func << 8) | (reg & 0xfc) | (1 << 31));

 return (addr);
}

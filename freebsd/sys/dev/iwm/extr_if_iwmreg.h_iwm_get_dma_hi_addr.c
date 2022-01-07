
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int bus_addr_t ;
typedef int addr ;



__attribute__((used)) static inline uint8_t iwm_get_dma_hi_addr(bus_addr_t addr)
{
 return (sizeof(addr) > sizeof(uint32_t) ? (addr >> 16) >> 16 : 0) & 0xF;
}

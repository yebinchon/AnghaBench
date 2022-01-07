
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ETHER_ADDR_LEN ;
 int ether_crc32_be (int *,int ) ;

__attribute__((used)) static inline uint32_t
muge_hash(uint8_t addr[ETHER_ADDR_LEN])
{
 return (ether_crc32_be(addr, ETHER_ADDR_LEN) >> 23) & 0x1ff;
}

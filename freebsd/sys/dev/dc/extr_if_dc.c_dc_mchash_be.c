
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ETHER_ADDR_LEN ;
 int ether_crc32_be (int const*,int ) ;

__attribute__((used)) static uint32_t
dc_mchash_be(const uint8_t *addr)
{
 uint32_t crc;


 crc = ether_crc32_be(addr, ETHER_ADDR_LEN);


 return ((crc >> 26) & 0x0000003F);
}

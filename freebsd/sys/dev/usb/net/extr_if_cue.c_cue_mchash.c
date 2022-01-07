
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int CUE_BITS ;
 int ETHER_ADDR_LEN ;
 int ether_crc32_le (int const*,int ) ;

__attribute__((used)) static uint32_t
cue_mchash(const uint8_t *addr)
{
 uint32_t crc;


 crc = ether_crc32_le(addr, ETHER_ADDR_LEN);

 return (crc & ((1 << CUE_BITS) - 1));
}

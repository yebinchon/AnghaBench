
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ether_crc32_le (void const*,size_t) ;
 int htole32 (int) ;

__attribute__((used)) static uint32_t
upgt_crc32_le(const void *buf, size_t size)
{
 uint32_t crc;

 crc = ether_crc32_le(buf, size);


 crc = htole32(crc ^ 0xffffffffU);

 return (crc);
}

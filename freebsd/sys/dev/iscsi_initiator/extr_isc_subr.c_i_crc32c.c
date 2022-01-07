
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int calculate_crc32c (int,void const*,size_t) ;

__attribute__((used)) static uint32_t
i_crc32c(const void *buf, size_t size, uint32_t crc)
{
     crc = crc ^ 0xffffffff;
     crc = calculate_crc32c(crc, buf, size);
     crc = crc ^ 0xffffffff;
     return crc;
}

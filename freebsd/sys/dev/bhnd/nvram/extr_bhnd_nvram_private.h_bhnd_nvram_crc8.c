
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t* bhnd_nvram_crc8_tab ;

__attribute__((used)) static inline uint8_t
bhnd_nvram_crc8(const void *buf, size_t size, uint8_t crc)
{
 const uint8_t *p = (const uint8_t *)buf;
 while (size--)
  crc = bhnd_nvram_crc8_tab[(crc ^ *p++)];

 return (crc);
}

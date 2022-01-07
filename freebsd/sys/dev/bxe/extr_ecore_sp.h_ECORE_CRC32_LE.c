
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int bswap32 (int ) ;
 int calc_crc32 (int *,int,int ,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline uint32_t
ECORE_CRC32_LE(uint32_t seed, uint8_t *mac, uint32_t len)
{
    uint32_t packet_buf[2] = {0};
    memcpy(((uint8_t *)(&packet_buf[0]))+2, &mac[0], 2);
    memcpy(&packet_buf[1], &mac[2], 4);
    return bswap32(calc_crc32((uint8_t *)packet_buf, 8, seed, 0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int crc32_result ;



uint32_t
calc_crc32(uint8_t *crc32_packet,
           uint32_t crc32_length,
           uint32_t crc32_seed,
           uint8_t complement)
{
   uint32_t byte = 0;
   uint32_t bit = 0;
   uint8_t msb = 0;
   uint32_t temp = 0;
   uint32_t shft = 0;
   uint8_t current_byte = 0;
   uint32_t crc32_result = crc32_seed;
   const uint32_t CRC32_POLY = 0x1edc6f41;

   if ((crc32_packet == ((void*)0)) ||
       (crc32_length == 0) ||
       ((crc32_length % 8) != 0))
    {
        return (crc32_result);
    }

    for (byte = 0; byte < crc32_length; byte = byte + 1)
    {
        current_byte = crc32_packet[byte];
        for (bit = 0; bit < 8; bit = bit + 1)
        {

            msb = (uint8_t)(crc32_result >> 31);

            crc32_result = crc32_result << 1;


            if (msb != (0x1 & (current_byte >> bit)))
            {
                crc32_result = crc32_result ^ CRC32_POLY;

                crc32_result |= 1;
            }
        }
    }
    temp = crc32_result;
    shft = sizeof(crc32_result) * 8 - 1;

    for (crc32_result >>= 1; crc32_result; crc32_result >>= 1)
    {
        temp <<= 1;
        temp |= crc32_result & 1;
        shft-- ;
    }


    temp <<= shft;



    {
        uint32_t t0, t1, t2, t3;
        t0 = (0x000000ff & (temp >> 24));
        t1 = (0x0000ff00 & (temp >> 8));
        t2 = (0x00ff0000 & (temp << 8));
        t3 = (0xff000000 & (temp << 24));
        crc32_result = t0 | t1 | t2 | t3;
    }


    if (complement)
    {
        crc32_result = ~crc32_result;
    }

    return (crc32_result);
}

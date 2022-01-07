
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static void
put_be16(uint8_t *buf, uint16_t val)
{
 buf[0] = val >> 8;
 buf[1] = val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void PUT_BE16(uint16_t val, uint8_t *p)
{
        *p++ = val >> 8;
        *p++ = val;
}

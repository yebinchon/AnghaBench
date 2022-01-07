
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void __inline
putbits24(uint8_t *buf, uint32_t val, const uint32_t n, uint32_t *i, uint32_t *l)
{
    buf += *i;
    if (*l >= n - 16) {
 (*i)++; (*i)++;
 *l = 16 - n + (*l);
 val <<= *l;
 *buf = *buf | ((val >> 16) & 0xff);
 *(++buf) = (val >> 8) & 0xff;
 *(++buf) = val & 0xff;
 if (*l == 0) {
     *l = 8;
     (*i)++;
     *(++buf) = 0;
 }
    } else {
 (*i)++; (*i)++; (*i)++;
 *l = 24 - n + (*l);
 val <<= *l;
 *buf = *buf | ((val >> 24) & 0xff);
 *(++buf) = (val >> 16) & 0xff;
 *(++buf) = (val >> 8) & 0xff;
 *(++buf) = val & 0xff;
    }
}

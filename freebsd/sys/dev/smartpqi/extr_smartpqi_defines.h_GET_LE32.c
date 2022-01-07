
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint32_t ;



__attribute__((used)) static inline uint32_t GET_LE32(const uint8_t *p)
{
 return p[0] | p[1] << 8 | p[2] << 16 | p[3] << 24;
}

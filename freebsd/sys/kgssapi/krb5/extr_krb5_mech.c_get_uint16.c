
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t
get_uint16(const uint8_t **pp, size_t *lenp)
{
 const uint8_t *p = *pp;
 uint16_t v;

 if (*lenp < 2)
  return (0);

 v = (p[0] << 8) | p[1];
 *pp = p + 2;
 *lenp = *lenp - 2;

 return (v);
}

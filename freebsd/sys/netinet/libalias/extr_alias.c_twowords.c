
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static __inline int
twowords(void *p)
{
 uint8_t *c = p;


 uint16_t s1 = ((uint16_t)c[1] << 8) + (uint16_t)c[0];
 uint16_t s2 = ((uint16_t)c[3] << 8) + (uint16_t)c[2];




 return (s1 + s2);
}

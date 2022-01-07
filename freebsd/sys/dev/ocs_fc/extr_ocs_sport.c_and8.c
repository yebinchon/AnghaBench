
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;



__attribute__((used)) static void
and8(uint8_t *a, uint8_t *b, uint8_t *c, uint32_t n)
{
 uint32_t i;

 for (i = 0; i < n; i ++) {
  *a = *b & *c;
  a++;
  b++;
  c++;
 }
}

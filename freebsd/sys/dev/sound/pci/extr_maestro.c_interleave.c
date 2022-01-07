
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void
interleave(int16_t *l, int16_t *r, int16_t *p, unsigned n)
{
 int16_t *end;

 for (end = l + n; l < end; ) {
  *p++ = *l++;
  *p++ = *r++;
 }
}

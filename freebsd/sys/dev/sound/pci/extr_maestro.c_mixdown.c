
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16_t ;



__attribute__((used)) static void
mixdown(int16_t *src, int16_t *dest, unsigned n)
{
 int16_t *end;

 for (end = dest + n; dest < end; dest++)
  *dest = (int16_t)(((int)*dest - (int)*src++) / 2);
}

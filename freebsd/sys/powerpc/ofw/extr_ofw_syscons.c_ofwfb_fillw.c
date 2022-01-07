
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;



void
ofwfb_fillw(int pat, void *base, size_t cnt)
{
 u_int16_t *bptr = base;

 while (cnt--)
  *bptr++ = pat;
}

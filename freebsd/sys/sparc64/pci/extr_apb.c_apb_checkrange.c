
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int rman_res_t ;



__attribute__((used)) static int
apb_checkrange(uint8_t map, rman_res_t scale, rman_res_t start, rman_res_t end)
{
 int i, ei;

 i = start / scale;
 ei = end / scale;
 if (i > 7 || ei > 7)
  return (0);
 for (; i <= ei; i++)
  if ((map & (1 << i)) == 0)
   return (0);
 return (1);
}

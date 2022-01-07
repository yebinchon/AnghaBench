
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static bool drm_edid_is_zero(u8 *in_edid, int length)
{
 int i;
 u32 *raw_edid = (u32 *)in_edid;

 for (i = 0; i < length / 4; i++)
  if (*(raw_edid + i) != 0)
   return 0;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int AFMT_16BIT ;
 int AFMT_24BIT ;
 int AFMT_32BIT ;
 int AFMT_8BIT ;
 int AFMT_A_LAW ;
 int AFMT_BIGENDIAN ;
 int AFMT_CHANNEL (int) ;
 int AFMT_MU_LAW ;
 int AFMT_SIGNED ;

u_int32_t
snd_fmtscore(u_int32_t fmt)
{
 u_int32_t ret;

 ret = 0;
 if (fmt & AFMT_SIGNED)
  ret |= 1 << 0;
 if (fmt & AFMT_BIGENDIAN)
  ret |= 1 << 1;




 ret |= (AFMT_CHANNEL(fmt) & 0x3f) << 2;
 if (fmt & AFMT_A_LAW)
  ret |= 1 << 8;
 else if (fmt & AFMT_MU_LAW)
  ret |= 1 << 9;
 else if (fmt & AFMT_8BIT)
  ret |= 1 << 10;
 else if (fmt & AFMT_16BIT)
  ret |= 1 << 11;
 else if (fmt & AFMT_24BIT)
  ret |= 1 << 12;
 else if (fmt & AFMT_32BIT)
  ret |= 1 << 13;

 return ret;
}

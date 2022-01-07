
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agg_chinfo {int stereo; int qs16; int us; } ;
typedef int kobj_t ;


 int AFMT_BIGENDIAN ;
 int AFMT_CHANNEL (int) ;
 int AFMT_S8 ;
 int AFMT_U16_LE ;
 int AFMT_U8 ;
 int EINVAL ;

__attribute__((used)) static int
aggpch_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct agg_chinfo *ch = data;

 if (format & AFMT_BIGENDIAN || format & AFMT_U16_LE)
  return EINVAL;
 ch->stereo = ch->qs16 = ch->us = 0;
 if (AFMT_CHANNEL(format) > 1)
  ch->stereo = 1;

 if (format & AFMT_U8 || format & AFMT_S8) {
  if (format & AFMT_U8)
   ch->us = 1;
 } else
  ch->qs16 = 1;
 return 0;
}

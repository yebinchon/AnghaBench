
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_chinfo {int fmt; } ;
typedef int kobj_t ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;
 int SV_AFMT_MONO ;
 int SV_AFMT_S16 ;
 int SV_AFMT_STEREO ;
 int SV_AFMT_U8 ;

__attribute__((used)) static int
svchan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct sc_chinfo *ch = data;


 ch->fmt = (AFMT_CHANNEL(format) > 1) ? SV_AFMT_STEREO : SV_AFMT_MONO;
 ch->fmt |= (format & AFMT_16BIT) ? SV_AFMT_S16 : SV_AFMT_U8;
 return 0;
}

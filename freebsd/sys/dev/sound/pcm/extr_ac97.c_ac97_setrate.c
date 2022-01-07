
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct ac97_info {int extstat; int lock; } ;


 int AC97_EXTCAP_DRA ;





 int ac97_rdcd (struct ac97_info*,int) ;
 int ac97_wrcd (struct ac97_info*,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

int
ac97_setrate(struct ac97_info *codec, int which, int rate)
{
 u_int16_t v;

 switch(which) {
 case 132:
 case 128:
 case 130:
 case 131:
 case 129:
  break;

 default:
  return -1;
 }

 snd_mtxlock(codec->lock);
 if (rate != 0) {
  v = rate;
  if (codec->extstat & AC97_EXTCAP_DRA)
   v >>= 1;
  ac97_wrcd(codec, which, v);
 }
 v = ac97_rdcd(codec, which);
 if (codec->extstat & AC97_EXTCAP_DRA)
  v <<= 1;
 snd_mtxunlock(codec->lock);
 return v;
}

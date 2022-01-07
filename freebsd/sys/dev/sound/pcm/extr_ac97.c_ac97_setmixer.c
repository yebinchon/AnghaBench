
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97mixtable_entry {int reg; int enable; int bits; int ofs; int mute; scalar_t__ mask; int stereo; } ;
struct ac97_info {int lock; struct ac97mixtable_entry* mix; } ;


 int AC97_MUTE ;
 int ac97_rdcd (struct ac97_info*,int) ;
 int ac97_wrcd (struct ac97_info*,int,int) ;
 int printf (char*,int,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
ac97_setmixer(struct ac97_info *codec, unsigned channel, unsigned left, unsigned right)
{
 struct ac97mixtable_entry *e = &codec->mix[channel];

 if (e->reg && e->enable && e->bits) {
  int mask, max, val, reg;

  reg = (e->reg >= 0) ? e->reg : -e->reg;
  max = (1 << e->bits) - 1;
  mask = (max << 8) | max;

  if (!e->stereo)
   right = left;







  if (e->reg > 0) {
   left = 100 - left;
   right = 100 - right;
  }

  left = (left * max) / 100;
  right = (right * max) / 100;

  val = (left << 8) | right;

  left = (left * 100) / max;
  right = (right * 100) / max;

  if (e->reg > 0) {
   left = 100 - left;
   right = 100 - right;
  }





  if (e->ofs) {
   val &= max;
   val <<= e->ofs;
   mask = (max << e->ofs);
  }






  if (e->mute == 1) {
   mask |= AC97_MUTE;
   if (left == 0 && right == 0)
    val = AC97_MUTE;
  }




  snd_mtxlock(codec->lock);
  if (e->mask) {
   int cur = ac97_rdcd(codec, reg);
   val |= cur & ~(mask);
  }
  ac97_wrcd(codec, reg, val);
  snd_mtxunlock(codec->lock);
  return left | (right << 8);
 } else {



  return -1;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct sb_info {int dummy; } ;
struct sb16_mixent {int bits; unsigned int ofs; scalar_t__ reg; scalar_t__ stereo; } ;


 struct sb_info* mix_getdevinfo (struct snd_mixer*) ;
 unsigned int rel2abs_volume (unsigned int,int) ;
 struct sb16_mixent* sb16_mixtab ;
 int sb_setmixer (struct sb_info*,scalar_t__,unsigned int) ;

__attribute__((used)) static int
sb16mix_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
     struct sb_info *sb = mix_getdevinfo(m);
     const struct sb16_mixent *e;
     int max;

 e = &sb16_mixtab[dev];
 max = (1 << e->bits) - 1;

 left = rel2abs_volume(left, max);
 right = rel2abs_volume(right, max);

 sb_setmixer(sb, e->reg, left << e->ofs);
 if (e->stereo)
  sb_setmixer(sb, e->reg + 1, right << e->ofs);
 else
  right = left;

 left = (left * 100) / max;
 right = (right * 100) / max;

     return left | (right << 8);
}

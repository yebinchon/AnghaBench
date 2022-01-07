
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct sb_info {int dummy; } ;






 struct sb_info* mix_getdevinfo (struct snd_mixer*) ;
 int sb_setmixer (struct sb_info*,int,unsigned int) ;

__attribute__((used)) static int
sbmix_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
     struct sb_info *sb = mix_getdevinfo(m);
     int reg, max;

 max = 7;
 switch (dev) {
 case 128:
  reg = 0x2;
  break;

 case 129:
  reg = 0x6;
  break;

 case 131:
  reg = 0x8;
  break;

 case 130:
  reg = 0x0a;
  max = 3;
  break;

 default:
  return -1;
 }

 left = (left * max) / 100;

 sb_setmixer(sb, reg, left << 1);

 left = (left * 100) / max;

     return left | (left << 8);
}

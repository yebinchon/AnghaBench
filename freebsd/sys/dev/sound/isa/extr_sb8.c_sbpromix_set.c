
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_char ;
struct snd_mixer {int dummy; } ;
struct sb_info {int dummy; } ;
 struct sb_info* mix_getdevinfo (struct snd_mixer*) ;
 int sb_setmixer (struct sb_info*,int,unsigned int) ;

__attribute__((used)) static int
sbpromix_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
     struct sb_info *sb = mix_getdevinfo(m);
     int reg, max;
     u_char val;

 max = 7;
 switch (dev) {
 case 130:
  reg = 0x04;
  break;

 case 131:
  reg = 0x0a;
  max = 3;
  break;

 case 128:
  reg = 0x22;
  break;

 case 129:
  reg = 0x26;
  break;

 case 133:
  reg = 0x28;
  break;

 case 132:
  reg = 0x2e;
  break;

 default:
  return -1;
 }

 left = (left * max) / 100;
 right = (dev == 131)? left : ((right * max) / 100);

 val = (dev == 131)? (left << 1) : (left << 5 | right << 1);
 sb_setmixer(sb, reg, val);

 left = (left * 100) / max;
 right = (right * 100) / max;

     return left | (right << 8);
}

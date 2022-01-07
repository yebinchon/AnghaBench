
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct ess_info {int dummy; } ;
 int ess_setmixer (struct ess_info*,int,int) ;
 struct ess_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static int
essmix_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
     struct ess_info *sc = mix_getdevinfo(m);
     int preg = 0, rreg = 0, l, r;

 l = (left * 15) / 100;
 r = (right * 15) / 100;
 switch (dev) {
 case 129:
  preg = 0x36;
  rreg = 0x6b;
  break;

 case 131:
  preg = 0x14;
  rreg = 0x7c;
  break;

 case 134:
  preg = 0x3e;
  rreg = 0x6e;
  break;

 case 132:
  preg = 0x1a;
  rreg = 0x68;
  break;

 case 133:
  preg = 0x3a;
  rreg = 0x6c;
  break;

 case 135:
  preg = 0x38;
  rreg = 0x6a;
  break;

 case 130:
  preg = 0x3c;
  break;

  case 128:
  l = left? (left * 63) / 100 : 64;
  r = right? (right * 63) / 100 : 64;
  ess_setmixer(sc, 0x60, l);
  ess_setmixer(sc, 0x62, r);
  left = (l == 64)? 0 : (l * 100) / 63;
  right = (r == 64)? 0 : (r * 100) / 63;
      return left | (right << 8);
 }

 if (preg)
  ess_setmixer(sc, preg, (l << 4) | r);
 if (rreg)
  ess_setmixer(sc, rreg, (l << 4) | r);

 left = (l * 100) / 15;
 right = (r * 100) / 15;

     return left | (right << 8);
}

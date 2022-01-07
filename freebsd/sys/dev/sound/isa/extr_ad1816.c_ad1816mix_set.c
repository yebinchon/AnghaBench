
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct snd_mixer {int dummy; } ;
struct ad1816_info {int dummy; } ;


 unsigned int AD1816_MUTE ;
 int ad1816_lock (struct ad1816_info*) ;
 int ad1816_read (struct ad1816_info*,int) ;
 int ad1816_unlock (struct ad1816_info*) ;
 int ad1816_write (struct ad1816_info*,int,int) ;
 struct ad1816_info* mix_getdevinfo (struct snd_mixer*) ;
 int printf (char*) ;

__attribute__((used)) static int
ad1816mix_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 struct ad1816_info *ad1816 = mix_getdevinfo(m);
     u_short reg = 0;


     left = AD1816_MUTE - (AD1816_MUTE * left) / 100;
     right = AD1816_MUTE - (AD1816_MUTE * right) / 100;

     reg = (left << 8) | right;


     if (left == AD1816_MUTE) reg |= 0x8000;
     if (right == AD1816_MUTE) reg |= 0x0080;

 ad1816_lock(ad1816);
     switch (dev) {
     case 128:
  ad1816_write(ad1816, 14, reg);
  break;

     case 136:
     case 133:
  ad1816_write(ad1816, 15, reg);
  break;

     case 129:
  ad1816_write(ad1816, 16, reg);
  break;

     case 130:
  ad1816_write(ad1816, 4, reg);
  break;

     case 134:
     case 132:
  ad1816_write(ad1816, 18, reg);
  break;

     case 131:
  ad1816_write(ad1816, 19, reg & ~0xff);
  break;

     case 135:

  ad1816_write(ad1816, 20, ((ad1816_read(ad1816, 20) & ~0x0f0f)
        | (((AD1816_MUTE - left) / 2) << 8)
        | ((AD1816_MUTE - right) / 2)));
  break;

     default:
  printf("ad1816_mixer_set(): unknown device.\n");
  break;
     }
 ad1816_unlock(ad1816);

     left = ((AD1816_MUTE - left) * 100) / AD1816_MUTE;
     right = ((AD1816_MUTE - right) * 100) / AD1816_MUTE;

     return left | (right << 8);
}

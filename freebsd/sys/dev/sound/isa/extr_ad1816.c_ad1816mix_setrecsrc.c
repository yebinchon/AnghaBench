
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct ad1816_info {int dummy; } ;







 int ad1816_lock (struct ad1816_info*) ;
 int ad1816_read (struct ad1816_info*,int) ;
 int ad1816_unlock (struct ad1816_info*) ;
 int ad1816_write (struct ad1816_info*,int,int) ;
 struct ad1816_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static u_int32_t
ad1816mix_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
 struct ad1816_info *ad1816 = mix_getdevinfo(m);
     int dev;

     switch (src) {
     case 131:
     case 129:
  dev = 0x00;
  break;

     case 132:
     case 130:
  dev = 0x20;
  break;

     case 128:
     default:
  dev = 0x50;
  src = 128;
     }

     dev |= dev << 8;
 ad1816_lock(ad1816);
     ad1816_write(ad1816, 20, (ad1816_read(ad1816, 20) & ~0x7070) | dev);
 ad1816_unlock(ad1816);
     return src;
}

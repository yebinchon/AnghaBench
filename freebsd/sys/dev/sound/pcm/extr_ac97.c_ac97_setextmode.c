
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct ac97_info {int extcaps; int extstat; int lock; int dev; } ;


 int AC97_EXTCAPS ;
 int AC97_REGEXT_STAT ;
 int ac97_rdcd (struct ac97_info*,int ) ;
 int ac97_wrcd (struct ac97_info*,int ,int) ;
 int device_printf (int ,char*,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

int
ac97_setextmode(struct ac97_info *codec, u_int16_t mode)
{
 mode &= AC97_EXTCAPS;
 if ((mode & ~codec->extcaps) != 0) {
  device_printf(codec->dev, "ac97 invalid mode set 0x%04x\n",
         mode);
  return -1;
 }
 snd_mtxlock(codec->lock);
 ac97_wrcd(codec, AC97_REGEXT_STAT, mode);
 codec->extstat = ac97_rdcd(codec, AC97_REGEXT_STAT) & AC97_EXTCAPS;
 snd_mtxunlock(codec->lock);
 return (mode == codec->extstat)? 0 : -1;
}

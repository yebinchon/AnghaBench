
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97mixtable_entry {int recidx; } ;
struct ac97_info {int lock; struct ac97mixtable_entry* mix; } ;


 int AC97_REG_RECSEL ;
 int ac97_wrcd (struct ac97_info*,int ,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
ac97_setrecsrc(struct ac97_info *codec, int channel)
{
 struct ac97mixtable_entry *e = &codec->mix[channel];

 if (e->recidx > 0) {
  int val = e->recidx - 1;
  val |= val << 8;
  snd_mtxlock(codec->lock);
  ac97_wrcd(codec, AC97_REG_RECSEL, val);
  snd_mtxunlock(codec->lock);
  return 0;
 } else
  return -1;
}

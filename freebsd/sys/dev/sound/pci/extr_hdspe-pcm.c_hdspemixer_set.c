
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct sc_pcminfo {int chnum; struct sc_chinfo* chan; int dev; } ;
struct sc_chinfo {scalar_t__ dir; unsigned int lvol; unsigned int rvol; scalar_t__ run; } ;


 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ PCMDIR_REC ;
 unsigned int SOUND_MIXER_RECLEV ;
 unsigned int SOUND_MIXER_VOLUME ;
 int device_printf (int ,char*,unsigned int,unsigned int) ;
 int hdspechan_setgain (struct sc_chinfo*) ;
 struct sc_pcminfo* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static int
hdspemixer_set(struct snd_mixer *m, unsigned dev,
    unsigned left, unsigned right)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 int i;

 scp = mix_getdevinfo(m);






 for (i = 0; i < scp->chnum; i++) {
  ch = &scp->chan[i];
  if ((dev == SOUND_MIXER_VOLUME && ch->dir == PCMDIR_PLAY) ||
      (dev == SOUND_MIXER_RECLEV && ch->dir == PCMDIR_REC)) {
   ch->lvol = left;
   ch->rvol = right;
   if (ch->run)
    hdspechan_setgain(ch);
  }
 }

 return (0);
}

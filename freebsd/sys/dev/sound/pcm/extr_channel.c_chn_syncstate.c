
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct snddev_info {int flags; int eqpreamp; TYPE_1__* mixer_dev; } ;
struct snd_mixer {int dummy; } ;
struct pcm_feeder {int dummy; } ;
struct pcm_channel {int feederflags; scalar_t__ direction; int dev; struct snddev_info* parentsnddev; } ;
struct TYPE_2__ {struct snd_mixer* si_drv1; } ;


 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int FEEDEQ_BASS ;
 int FEEDEQ_BYPASS ;
 int FEEDEQ_DISABLE ;
 int FEEDEQ_ENABLE ;
 int FEEDEQ_PREAMP ;
 int FEEDEQ_STATE ;
 int FEEDEQ_TREBLE ;
 int FEEDER_EQ ;
 scalar_t__ FEEDER_SET (struct pcm_feeder*,int ,int) ;
 int FEEDER_VOLUME ;
 scalar_t__ PCMDIR_PLAY ;
 int SD_F_EQ_BYPASSED ;
 int SD_F_EQ_ENABLED ;
 int SD_F_SOFTPCMVOL ;
 int SND_VOL_C_MASTER ;
 scalar_t__ SOUND_MIXER_BASS ;
 scalar_t__ SOUND_MIXER_NONE ;
 scalar_t__ SOUND_MIXER_PCM ;
 scalar_t__ SOUND_MIXER_TREBLE ;
 struct pcm_feeder* chn_findfeeder (struct pcm_channel*,int) ;
 int chn_setvolume_multi (struct pcm_channel*,int ,int,int,int) ;
 int device_printf (int ,char*,...) ;
 int mix_get (struct snd_mixer*,scalar_t__) ;
 scalar_t__ mix_getparent (struct snd_mixer*,scalar_t__) ;

void
chn_syncstate(struct pcm_channel *c)
{
 struct snddev_info *d;
 struct snd_mixer *m;

 d = (c != ((void*)0)) ? c->parentsnddev : ((void*)0);
 m = (d != ((void*)0) && d->mixer_dev != ((void*)0)) ? d->mixer_dev->si_drv1 :
     ((void*)0);

 if (d == ((void*)0) || m == ((void*)0))
  return;

 CHN_LOCKASSERT(c);

 if (c->feederflags & (1 << FEEDER_VOLUME)) {
  uint32_t parent;
  int vol, pvol, left, right, center;

  if (c->direction == PCMDIR_PLAY &&
      (d->flags & SD_F_SOFTPCMVOL)) {

   vol = mix_get(m, SOUND_MIXER_PCM);
   parent = mix_getparent(m, SOUND_MIXER_PCM);
   if (parent != SOUND_MIXER_NONE)
    pvol = mix_get(m, parent);
   else
    pvol = 100 | (100 << 8);

  } else {
   vol = 100 | (100 << 8);
   pvol = vol;
  }

  if (vol == -1) {
   device_printf(c->dev,
       "Soft PCM Volume: Failed to read pcm "
       "default value\n");
   vol = 100 | (100 << 8);
  }

  if (pvol == -1) {
   device_printf(c->dev,
       "Soft PCM Volume: Failed to read parent "
       "default value\n");
   pvol = 100 | (100 << 8);
  }

  left = ((vol & 0x7f) * (pvol & 0x7f)) / 100;
  right = (((vol >> 8) & 0x7f) * ((pvol >> 8) & 0x7f)) / 100;
  center = (left + right) >> 1;

  chn_setvolume_multi(c, SND_VOL_C_MASTER, left, right, center);
 }

 if (c->feederflags & (1 << FEEDER_EQ)) {
  struct pcm_feeder *f;
  int treble, bass, state;


  treble = mix_get(m, SOUND_MIXER_TREBLE);
  bass = mix_get(m, SOUND_MIXER_BASS);


  if (treble == -1)
   treble = 50;
  else
   treble = ((treble & 0x7f) +
       ((treble >> 8) & 0x7f)) >> 1;

  if (bass == -1)
   bass = 50;
  else
   bass = ((bass & 0x7f) + ((bass >> 8) & 0x7f)) >> 1;

  f = chn_findfeeder(c, FEEDER_EQ);
  if (f != ((void*)0)) {
   if (FEEDER_SET(f, FEEDEQ_TREBLE, treble) != 0)
    device_printf(c->dev,
        "EQ: Failed to set treble -- %d\n",
        treble);
   if (FEEDER_SET(f, FEEDEQ_BASS, bass) != 0)
    device_printf(c->dev,
        "EQ: Failed to set bass -- %d\n",
        bass);
   if (FEEDER_SET(f, FEEDEQ_PREAMP, d->eqpreamp) != 0)
    device_printf(c->dev,
        "EQ: Failed to set preamp -- %d\n",
        d->eqpreamp);
   if (d->flags & SD_F_EQ_BYPASSED)
    state = FEEDEQ_BYPASS;
   else if (d->flags & SD_F_EQ_ENABLED)
    state = FEEDEQ_ENABLE;
   else
    state = FEEDEQ_DISABLE;
   if (FEEDER_SET(f, FEEDEQ_STATE, state) != 0)
    device_printf(c->dev,
        "EQ: Failed to set state -- %d\n", state);
  }
 }
}

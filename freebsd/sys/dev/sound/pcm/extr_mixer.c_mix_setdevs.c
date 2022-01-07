
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snddev_info {int flags; } ;
struct snd_mixer {int* parent; int* child; int devs; int dev; } ;


 int SD_F_EQ ;
 int SD_F_SOFTPCMVOL ;
 int SOUND_MASK_BASS ;
 int SOUND_MASK_PCM ;
 int SOUND_MASK_TREBLE ;
 int SOUND_MIXER_NRDEVICES ;
 struct snddev_info* device_get_softc (int ) ;

void
mix_setdevs(struct snd_mixer *m, u_int32_t v)
{
 struct snddev_info *d;
 int i;

 if (m == ((void*)0))
  return;

 d = device_get_softc(m->dev);
 if (d != ((void*)0) && (d->flags & SD_F_SOFTPCMVOL))
  v |= SOUND_MASK_PCM;
 if (d != ((void*)0) && (d->flags & SD_F_EQ))
  v |= SOUND_MASK_TREBLE | SOUND_MASK_BASS;
 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (m->parent[i] < SOUND_MIXER_NRDEVICES)
   v |= 1 << m->parent[i];
  v |= m->child[i];
 }
 m->devs = v;
}

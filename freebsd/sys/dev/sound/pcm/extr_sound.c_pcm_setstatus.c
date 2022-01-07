
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int flags; scalar_t__ playcount; scalar_t__ reccount; int * clones; int status; } ;
typedef int device_t ;


 int EINVAL ;
 int PCM_BUSYASSERT (struct snddev_info*) ;
 int PCM_LOCK (struct snddev_info*) ;
 int PCM_RELEASE (struct snddev_info*) ;
 int PCM_UNLOCK (struct snddev_info*) ;
 int SD_F_AUTOVCHAN ;
 int SD_F_REGISTERED ;
 int SD_F_SIMPLEX ;
 int SND_STATUSLEN ;
 struct snddev_info* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 scalar_t__ pcm_best_unit (scalar_t__) ;
 int pcm_setmaxautovchans (struct snddev_info*,int ) ;
 int pcm_sysinit (int ) ;
 int snd_clone_enable (int *) ;
 int snd_maxautovchans ;
 scalar_t__ snd_unit ;
 int snd_unit_auto ;
 int strlcpy (int ,char*,int ) ;

int
pcm_setstatus(device_t dev, char *str)
{
 struct snddev_info *d = device_get_softc(dev);


 if (d->flags & SD_F_REGISTERED)
  return (EINVAL);

 PCM_BUSYASSERT(d);

 if (d->playcount == 0 || d->reccount == 0)
  d->flags |= SD_F_SIMPLEX;

 if (d->playcount > 0 || d->reccount > 0)
  d->flags |= SD_F_AUTOVCHAN;

 pcm_setmaxautovchans(d, snd_maxautovchans);

 strlcpy(d->status, str, SND_STATUSLEN);

 PCM_LOCK(d);


 if (d->clones != ((void*)0))
  (void)snd_clone_enable(d->clones);


 d->flags |= SD_F_REGISTERED;

 PCM_RELEASE(d);

 PCM_UNLOCK(d);





 pcm_sysinit(dev);

 if (snd_unit_auto < 0)
  snd_unit_auto = (snd_unit < 0) ? 1 : 0;
 if (snd_unit < 0 || snd_unit_auto > 1)
  snd_unit = device_get_unit(dev);
 else if (snd_unit_auto == 1)
  snd_unit = pcm_best_unit(snd_unit);

 return (0);
}

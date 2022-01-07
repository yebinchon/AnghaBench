
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snddev_info {struct cdev* mixer_dev; } ;
struct snd_mixer {int lock; int dev; int modify_counter; int name; } ;
struct cdev {struct snd_mixer* si_drv1; int * si_devsw; } ;
struct TYPE_3__ {int dev; int card_number; int enabled; scalar_t__ port_number; int modify_counter; int name; int id; } ;
typedef TYPE_1__ oss_mixerinfo ;


 int EINVAL ;
 int PCM_LOCK (struct snddev_info*) ;
 int PCM_REGISTERED (struct snddev_info*) ;
 int PCM_UNLOCK (struct snddev_info*) ;
 int PCM_UNLOCKASSERT (struct snddev_info*) ;
 int bzero (void*,int) ;
 int devclass_get_maxunit (int *) ;
 struct snddev_info* devclass_get_softc (int *,int) ;
 scalar_t__ device_is_attached (int ) ;
 int mixer_cdevsw ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;
 int * pcm_devclass ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,int ,int) ;

int
mixer_oss_mixerinfo(struct cdev *i_dev, oss_mixerinfo *mi)
{
 struct snddev_info *d;
 struct snd_mixer *m;
 int nmix, i;





 if (mi->dev == -1 && i_dev->si_devsw != &mixer_cdevsw)
  return (EINVAL);

 d = ((void*)0);
 m = ((void*)0);
 nmix = 0;





 for (i = 0; pcm_devclass != ((void*)0) &&
     i < devclass_get_maxunit(pcm_devclass); i++) {
  d = devclass_get_softc(pcm_devclass, i);
  if (!PCM_REGISTERED(d))
   continue;




  PCM_UNLOCKASSERT(d);
  PCM_LOCK(d);

  if (d->mixer_dev != ((void*)0) && d->mixer_dev->si_drv1 != ((void*)0) &&
      ((mi->dev == -1 && d->mixer_dev == i_dev) ||
      mi->dev == nmix)) {
   m = d->mixer_dev->si_drv1;
   mtx_lock(m->lock);
   bzero((void *)mi, sizeof(*mi));
   mi->dev = nmix;
   snprintf(mi->id, sizeof(mi->id), "mixer%d", i);
   strlcpy(mi->name, m->name, sizeof(mi->name));
   mi->modify_counter = m->modify_counter;
   mi->card_number = i;




   mi->port_number = 0;
   mi->enabled = device_is_attached(m->dev) ? 1 : 0;
   mtx_unlock(m->lock);
  } else
   ++nmix;

  PCM_UNLOCK(d);

  if (m != ((void*)0))
   return (0);
 }

 return (EINVAL);
}

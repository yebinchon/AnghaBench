
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int lock; int recsrc; int * level; } ;
struct cdev {struct snd_mixer* si_drv1; } ;
typedef int device_t ;


 int MIXER_REINIT (struct snd_mixer*) ;
 int SOUND_MIXER_NRDEVICES ;
 struct cdev* mixer_get_devt (int ) ;
 int mixer_set (struct snd_mixer*,int,int ) ;
 int mixer_setrecsrc (struct snd_mixer*,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

int
mixer_reinit(device_t dev)
{
 struct snd_mixer *m;
 struct cdev *pdev;
 int i;

 pdev = mixer_get_devt(dev);
 m = pdev->si_drv1;
 snd_mtxlock(m->lock);

 i = MIXER_REINIT(m);
 if (i) {
  snd_mtxunlock(m->lock);
  return i;
 }

 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
  mixer_set(m, i, m->level[i]);

 mixer_setrecsrc(m, m->recsrc);
 snd_mtxunlock(m->lock);

 return 0;
}

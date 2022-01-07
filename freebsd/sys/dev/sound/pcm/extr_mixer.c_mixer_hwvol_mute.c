
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int lock; } ;
struct cdev {struct snd_mixer* si_drv1; } ;
typedef int device_t ;


 struct cdev* mixer_get_devt (int ) ;
 int mixer_hwvol_mute_locked (struct snd_mixer*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

void
mixer_hwvol_mute(device_t dev)
{
 struct snd_mixer *m;
 struct cdev *pdev;

 pdev = mixer_get_devt(dev);
 m = pdev->si_drv1;
 snd_mtxlock(m->lock);
 mixer_hwvol_mute_locked(m);
 snd_mtxunlock(m->lock);
}

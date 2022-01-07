
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int lock; } ;
struct cdev {struct snd_mixer* si_drv1; } ;
typedef int device_t ;


 struct cdev* mixer_get_devt (int ) ;
 int mixer_hwvol_step_locked (struct snd_mixer*,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

void
mixer_hwvol_step(device_t dev, int left_step, int right_step)
{
 struct snd_mixer *m;
 struct cdev *pdev;

 pdev = mixer_get_devt(dev);
 m = pdev->si_drv1;
 snd_mtxlock(m->lock);
 mixer_hwvol_step_locked(m, left_step, right_step);
 snd_mtxunlock(m->lock);
}

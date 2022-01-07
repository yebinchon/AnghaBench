
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct snddev_info {int dummy; } ;
struct snd_mixer {scalar_t__ busy; int lock; int dev; } ;
struct cdev {struct snd_mixer* si_drv1; } ;


 int EBADF ;
 int PCM_REGISTERED (struct snddev_info*) ;
 struct snddev_info* device_get_softc (int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
mixer_close(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
 struct snddev_info *d;
 struct snd_mixer *m;
 int ret;

 if (i_dev == ((void*)0) || i_dev->si_drv1 == ((void*)0))
  return (EBADF);

 m = i_dev->si_drv1;
 d = device_get_softc(m->dev);
 if (!PCM_REGISTERED(d))
  return (EBADF);



 snd_mtxlock(m->lock);
 ret = (m->busy == 0) ? EBADF : 0;
 m->busy = 0;
 snd_mtxunlock(m->lock);

 return (ret);
}

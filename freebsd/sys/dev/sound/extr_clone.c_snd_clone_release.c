
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_clone_entry {int flags; int pid; int * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;


 int EBADF ;
 int ENODEV ;
 int SND_CLONE_ASSERT (int ,char*) ;
 int SND_CLONE_BUSY ;
 int SND_CLONE_INVOKE ;

int
snd_clone_release(struct cdev *dev)
{
 struct snd_clone_entry *ce;

 SND_CLONE_ASSERT(dev != ((void*)0), ("NULL dev"));

 ce = dev->si_drv2;
 if (ce == ((void*)0))
  return (ENODEV);

 SND_CLONE_ASSERT(ce->parent != ((void*)0), ("NULL parent"));

 ce->flags &= ~SND_CLONE_INVOKE;

 if (!(ce->flags & SND_CLONE_BUSY))
  return (EBADF);

 ce->flags &= ~SND_CLONE_BUSY;
 ce->pid = -1;

 return (0);
}

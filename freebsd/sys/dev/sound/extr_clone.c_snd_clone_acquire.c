
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_clone_entry {int flags; int * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;


 int EBUSY ;
 int ENODEV ;
 int SND_CLONE_ASSERT (int ,char*) ;
 int SND_CLONE_BUSY ;
 int SND_CLONE_INVOKE ;

int
snd_clone_acquire(struct cdev *dev)
{
 struct snd_clone_entry *ce;

 SND_CLONE_ASSERT(dev != ((void*)0), ("NULL dev"));

 ce = dev->si_drv2;
 if (ce == ((void*)0))
  return (ENODEV);

 SND_CLONE_ASSERT(ce->parent != ((void*)0), ("NULL parent"));

 ce->flags &= ~SND_CLONE_INVOKE;

 if (ce->flags & SND_CLONE_BUSY)
  return (EBUSY);

 ce->flags |= SND_CLONE_BUSY;

 return (0);
}

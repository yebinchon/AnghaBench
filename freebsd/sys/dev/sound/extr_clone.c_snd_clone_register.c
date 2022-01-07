
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_clone_entry {int flags; scalar_t__ unit; struct cdev* devt; int * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;


 int SND_CLONE_ALLOC ;
 int SND_CLONE_ASSERT (int,char*) ;
 int SND_CLONE_INVOKE ;
 scalar_t__ dev2unit (struct cdev*) ;

void
snd_clone_register(struct snd_clone_entry *ce, struct cdev *dev)
{
 SND_CLONE_ASSERT(ce != ((void*)0), ("NULL snd_clone_entry"));
 SND_CLONE_ASSERT(dev != ((void*)0), ("NULL dev"));
 SND_CLONE_ASSERT(dev->si_drv2 == ((void*)0), ("dev->si_drv2 not NULL"));
 SND_CLONE_ASSERT((ce->flags & SND_CLONE_ALLOC) == SND_CLONE_ALLOC,
     ("invalid clone alloc flags=0x%08x", ce->flags));
 SND_CLONE_ASSERT(ce->devt == ((void*)0), ("ce->devt not NULL"));
 SND_CLONE_ASSERT(ce->unit == dev2unit(dev),
     ("invalid unit ce->unit=0x%08x dev2unit=0x%08x",
     ce->unit, dev2unit(dev)));

 SND_CLONE_ASSERT(ce->parent != ((void*)0), ("NULL parent"));

 dev->si_drv2 = ce;
 ce->devt = dev;
 ce->flags &= ~SND_CLONE_ALLOC;
 ce->flags |= SND_CLONE_INVOKE;
}

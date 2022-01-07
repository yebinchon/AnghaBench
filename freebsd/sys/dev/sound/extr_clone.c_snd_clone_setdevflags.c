
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_clone_entry {int flags; int * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;


 int SND_CLONE_ASSERT (int,char*) ;
 int SND_CLONE_DEVMASK ;

uint32_t
snd_clone_setdevflags(struct cdev *dev, uint32_t flags)
{
 struct snd_clone_entry *ce;

 SND_CLONE_ASSERT(dev != ((void*)0), ("NULL dev"));
 SND_CLONE_ASSERT(!(flags & ~SND_CLONE_DEVMASK),
     ("invalid clone dev flags=0x%08x", flags));

 ce = dev->si_drv2;
 if (ce == ((void*)0))
  return (0xffffffff);

 SND_CLONE_ASSERT(ce->parent != ((void*)0), ("NULL parent"));

 ce->flags = flags;

 return (ce->flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_clone_entry {int flags; int * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;


 int SND_CLONE_ASSERT (int ,char*) ;

uint32_t
snd_clone_getdevflags(struct cdev *dev)
{
 struct snd_clone_entry *ce;

 SND_CLONE_ASSERT(dev != ((void*)0), ("NULL dev"));

 ce = dev->si_drv2;
 if (ce == ((void*)0))
  return (0xffffffff);

 SND_CLONE_ASSERT(ce->parent != ((void*)0), ("NULL parent"));

 return (ce->flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct snd_clone_entry {struct timespec tsp; int * parent; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;


 int ENODEV ;
 int SND_CLONE_ASSERT (int ,char*) ;

int
snd_clone_getdevtime(struct cdev *dev, struct timespec *tsp)
{
 struct snd_clone_entry *ce;

 SND_CLONE_ASSERT(dev != ((void*)0), ("NULL dev"));
 SND_CLONE_ASSERT(tsp != ((void*)0), ("NULL timespec"));

 ce = dev->si_drv2;
 if (ce == ((void*)0))
  return (ENODEV);

 SND_CLONE_ASSERT(ce->parent != ((void*)0), ("NULL parent"));

 *tsp = ce->tsp;

 return (0);
}

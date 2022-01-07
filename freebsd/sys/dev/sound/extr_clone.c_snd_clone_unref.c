
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_clone_entry {struct snd_clone* parent; } ;
struct snd_clone {scalar_t__ refcount; int flags; } ;
struct cdev {struct snd_clone_entry* si_drv2; } ;


 int SND_CLONE_ASSERT (int,char*) ;
 int SND_CLONE_GC_LASTREF ;
 int SND_CLONE_GC_UNREF ;
 int snd_clone_gc (struct snd_clone*) ;

int
snd_clone_unref(struct cdev *dev)
{
 struct snd_clone_entry *ce;
 struct snd_clone *c;

 SND_CLONE_ASSERT(dev != ((void*)0), ("NULL dev"));

 ce = dev->si_drv2;
 if (ce == ((void*)0))
  return (0);

 c = ce->parent;
 SND_CLONE_ASSERT(c != ((void*)0), ("NULL parent"));
 SND_CLONE_ASSERT(c->refcount > 0, ("refcount <= 0"));

 c->refcount--;




 if ((c->flags & SND_CLONE_GC_UNREF) &&
     (!(c->flags & SND_CLONE_GC_LASTREF) ||
     (c->refcount == 0 && (c->flags & SND_CLONE_GC_LASTREF))))
  (void)snd_clone_gc(c);

 return (c->refcount);
}

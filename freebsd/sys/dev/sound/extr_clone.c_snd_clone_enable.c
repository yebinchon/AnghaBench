
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_clone {int flags; } ;


 int EINVAL ;
 int SND_CLONE_ASSERT (int ,char*) ;
 int SND_CLONE_ENABLE ;

int
snd_clone_enable(struct snd_clone *c)
{
 SND_CLONE_ASSERT(c != ((void*)0), ("NULL snd_clone"));

 if (c->flags & SND_CLONE_ENABLE)
  return (EINVAL);

 c->flags |= SND_CLONE_ENABLE;

 return (0);
}

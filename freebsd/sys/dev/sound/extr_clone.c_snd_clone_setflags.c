
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_clone {int flags; } ;


 int SND_CLONE_ASSERT (int,char*) ;
 int SND_CLONE_MASK ;

uint32_t
snd_clone_setflags(struct snd_clone *c, uint32_t flags)
{
 SND_CLONE_ASSERT(c != ((void*)0), ("NULL snd_clone"));
 SND_CLONE_ASSERT(!(flags & ~SND_CLONE_MASK),
     ("invalid clone flags=0x%08x", flags));

 c->flags = flags;

 return (c->flags);
}

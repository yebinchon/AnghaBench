
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_clone {int flags; } ;


 int SND_CLONE_ASSERT (int ,char*) ;

uint32_t
snd_clone_getflags(struct snd_clone *c)
{
 SND_CLONE_ASSERT(c != ((void*)0), ("NULL snd_clone"));

 return (c->flags);
}

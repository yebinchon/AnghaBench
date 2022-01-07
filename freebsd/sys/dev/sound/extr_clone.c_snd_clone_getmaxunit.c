
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_clone {int maxunit; } ;


 int SND_CLONE_ASSERT (int ,char*) ;

int
snd_clone_getmaxunit(struct snd_clone *c)
{
 SND_CLONE_ASSERT(c != ((void*)0), ("NULL snd_clone"));

 return (c->maxunit);
}

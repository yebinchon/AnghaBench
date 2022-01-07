
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_clone {int typemask; int maxunit; } ;


 int SND_CLONE_ASSERT (int,char*) ;
 int SND_CLONE_MAXUNIT ;

int
snd_clone_setmaxunit(struct snd_clone *c, int maxunit)
{
 SND_CLONE_ASSERT(c != ((void*)0), ("NULL snd_clone"));
 SND_CLONE_ASSERT(maxunit == -1 ||
     !(maxunit & ~(~c->typemask & SND_CLONE_MAXUNIT)),
     ("maxunit overflow: typemask=0x%08x maxunit=%d",
     c->typemask, maxunit));

 c->maxunit = (maxunit == -1) ? (~c->typemask & SND_CLONE_MAXUNIT) :
     maxunit;

 return (c->maxunit);
}

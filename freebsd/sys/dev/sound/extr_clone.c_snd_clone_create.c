
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_clone {int typemask; int maxunit; int deadline; int flags; int head; int tsp; scalar_t__ size; scalar_t__ refcount; } ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int SND_CLONE_ASSERT (int,char*) ;
 int SND_CLONE_MASK ;
 int SND_CLONE_MAXUNIT ;
 int TAILQ_INIT (int *) ;
 struct snd_clone* malloc (int,int ,int) ;
 int snd_timestamp (int *) ;

struct snd_clone *
snd_clone_create(int typemask, int maxunit, int deadline, uint32_t flags)
{
 struct snd_clone *c;

 SND_CLONE_ASSERT(!(typemask & ~SND_CLONE_MAXUNIT),
     ("invalid typemask: 0x%08x", typemask));
 SND_CLONE_ASSERT(maxunit == -1 ||
     !(maxunit & ~(~typemask & SND_CLONE_MAXUNIT)),
     ("maxunit overflow: typemask=0x%08x maxunit=%d",
     typemask, maxunit));
 SND_CLONE_ASSERT(!(flags & ~SND_CLONE_MASK),
     ("invalid clone flags=0x%08x", flags));

 c = malloc(sizeof(*c), M_DEVBUF, M_WAITOK | M_ZERO);
 c->refcount = 0;
 c->size = 0;
 c->typemask = typemask;
 c->maxunit = (maxunit == -1) ? (~typemask & SND_CLONE_MAXUNIT) :
     maxunit;
 c->deadline = deadline;
 c->flags = flags;
 snd_timestamp(&c->tsp);
 TAILQ_INIT(&c->head);

 return (c);
}

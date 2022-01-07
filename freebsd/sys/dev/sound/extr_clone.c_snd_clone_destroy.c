
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_clone_entry {int * devt; int head; } ;
struct snd_clone {int * devt; int head; } ;


 int M_DEVBUF ;
 int SND_CLONE_ASSERT (int ,char*) ;
 struct snd_clone_entry* TAILQ_FIRST (int *) ;
 struct snd_clone_entry* TAILQ_NEXT (struct snd_clone_entry*,int ) ;
 int destroy_dev (int *) ;
 int free (struct snd_clone_entry*,int ) ;
 int link ;

void
snd_clone_destroy(struct snd_clone *c)
{
 struct snd_clone_entry *ce, *tmp;

 SND_CLONE_ASSERT(c != ((void*)0), ("NULL snd_clone"));

 ce = TAILQ_FIRST(&c->head);
 while (ce != ((void*)0)) {
  tmp = TAILQ_NEXT(ce, link);
  if (ce->devt != ((void*)0))
   destroy_dev(ce->devt);
  free(ce, M_DEVBUF);
  ce = tmp;
 }

 free(c, M_DEVBUF);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secashead_queue {int dummy; } ;
struct secasvar {struct secashead_queue savtree_alive; struct secashead_queue savtree_larval; } ;
struct secashead {struct secashead_queue savtree_alive; struct secashead_queue savtree_larval; } ;


 struct secasvar* TAILQ_FIRST (struct secashead_queue*) ;
 struct secasvar* TAILQ_NEXT (struct secasvar*,int ) ;
 int TAILQ_REMOVE (struct secashead_queue*,struct secasvar*,int ) ;
 int chain ;
 int key_freesah (struct secasvar**) ;
 int key_freesav (struct secasvar**) ;

__attribute__((used)) static void
key_freesah_flushed(struct secashead_queue *flushq)
{
 struct secashead *sah, *nextsah;
 struct secasvar *sav, *nextsav;

 sah = TAILQ_FIRST(flushq);
 while (sah != ((void*)0)) {
  sav = TAILQ_FIRST(&sah->savtree_larval);
  while (sav != ((void*)0)) {
   nextsav = TAILQ_NEXT(sav, chain);
   TAILQ_REMOVE(&sah->savtree_larval, sav, chain);
   key_freesav(&sav);
   key_freesah(&sah);
   sav = nextsav;
  }
  sav = TAILQ_FIRST(&sah->savtree_alive);
  while (sav != ((void*)0)) {
   nextsav = TAILQ_NEXT(sav, chain);
   TAILQ_REMOVE(&sah->savtree_alive, sav, chain);
   key_freesav(&sav);
   key_freesah(&sah);
   sav = nextsav;
  }
  nextsah = TAILQ_NEXT(sah, chain);
  key_freesah(&sah);
  sah = nextsah;
 }
}

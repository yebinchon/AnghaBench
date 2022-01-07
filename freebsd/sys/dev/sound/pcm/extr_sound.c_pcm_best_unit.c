
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {scalar_t__ playcount; scalar_t__ reccount; } ;


 int PCM_REGISTERED (struct snddev_info*) ;
 int devclass_get_maxunit (int *) ;
 struct snddev_info* devclass_get_softc (int *,int) ;
 int * pcm_devclass ;

__attribute__((used)) static int
pcm_best_unit(int old)
{
 struct snddev_info *d;
 int i, best, bestprio, prio;

 best = -1;
 bestprio = -100;
 for (i = 0; pcm_devclass != ((void*)0) &&
     i < devclass_get_maxunit(pcm_devclass); i++) {
  d = devclass_get_softc(pcm_devclass, i);
  if (!PCM_REGISTERED(d))
   continue;
  prio = 0;
  if (d->playcount == 0)
   prio -= 10;
  if (d->reccount == 0)
   prio -= 2;
  if (prio > bestprio || (prio == bestprio && i == old)) {
   best = i;
   bestprio = prio;
  }
 }
 return (best);
}

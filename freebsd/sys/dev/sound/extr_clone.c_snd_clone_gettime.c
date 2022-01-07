
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct snd_clone {struct timespec tsp; } ;


 int SND_CLONE_ASSERT (int ,char*) ;

int
snd_clone_gettime(struct snd_clone *c, struct timespec *tsp)
{
 SND_CLONE_ASSERT(c != ((void*)0), ("NULL snd_clone"));
 SND_CLONE_ASSERT(tsp != ((void*)0), ("NULL timespec"));

 *tsp = c->tsp;

 return (0);
}

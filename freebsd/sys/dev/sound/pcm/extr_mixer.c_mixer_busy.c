
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int busy; } ;


 int KASSERT (int ,char*) ;

int
mixer_busy(struct snd_mixer *m)
{
 KASSERT(m != ((void*)0), ("NULL snd_mixer"));

 return (m->busy);
}

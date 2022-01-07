
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_mixer {int lock; } ;


 int ENXIO ;
 int KASSERT (int ,char*) ;
 int mixer_setrecsrc (struct snd_mixer*,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

int
mix_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
 int ret;

 KASSERT(m != ((void*)0), ("NULL snd_mixer"));

 snd_mtxlock(m->lock);
 ret = mixer_setrecsrc(m, src);
 snd_mtxunlock(m->lock);

 return ((ret != 0) ? ENXIO : 0);
}

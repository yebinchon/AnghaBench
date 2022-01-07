
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_mixer {int lock; } ;


 int KASSERT (int ,char*) ;
 int mixer_getrecsrc (struct snd_mixer*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

u_int32_t
mix_getrecsrc(struct snd_mixer *m)
{
 u_int32_t ret;

 KASSERT(m != ((void*)0), ("NULL snd_mixer"));

 snd_mtxlock(m->lock);
 ret = mixer_getrecsrc(m);
 snd_mtxunlock(m->lock);

 return (ret);
}

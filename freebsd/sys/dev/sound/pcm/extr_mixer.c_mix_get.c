
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct snd_mixer {int lock; } ;


 int KASSERT (int ,char*) ;
 int mixer_get (struct snd_mixer*,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

int
mix_get(struct snd_mixer *m, u_int dev)
{
 int ret;

 KASSERT(m != ((void*)0), ("NULL snd_mixer"));

 snd_mtxlock(m->lock);
 ret = mixer_get(m, dev);
 snd_mtxunlock(m->lock);

 return (ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct snd_mixer {int lock; } ;


 int ENXIO ;
 int KASSERT (int ,char*) ;
 int mixer_set (struct snd_mixer*,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

int
mix_set(struct snd_mixer *m, u_int dev, u_int left, u_int right)
{
 int ret;

 KASSERT(m != ((void*)0), ("NULL snd_mixer"));

 snd_mtxlock(m->lock);
 ret = mixer_set(m, dev, left | (right << 8));
 snd_mtxunlock(m->lock);

 return ((ret != 0) ? ENXIO : 0);
}

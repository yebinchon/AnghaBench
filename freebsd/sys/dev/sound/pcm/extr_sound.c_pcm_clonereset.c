
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int playcount; int reccount; scalar_t__ pvchancount; scalar_t__ rvchancount; int clones; } ;


 int PCMMAXCLONE ;
 int PCM_BUSYASSERT (struct snddev_info*) ;
 int max (scalar_t__,int ) ;
 int snd_clone_gc (int ) ;
 int snd_clone_setmaxunit (int ,int) ;
 int snd_maxautovchans ;

__attribute__((used)) static void
pcm_clonereset(struct snddev_info *d)
{
 int cmax;

 PCM_BUSYASSERT(d);

 cmax = d->playcount + d->reccount - 1;
 if (d->pvchancount > 0)
  cmax += max(d->pvchancount, snd_maxautovchans) - 1;
 if (d->rvchancount > 0)
  cmax += max(d->rvchancount, snd_maxautovchans) - 1;
 if (cmax > PCMMAXCLONE)
  cmax = PCMMAXCLONE;
 (void)snd_clone_gc(d->clones);
 (void)snd_clone_setmaxunit(d->clones, cmax);
}

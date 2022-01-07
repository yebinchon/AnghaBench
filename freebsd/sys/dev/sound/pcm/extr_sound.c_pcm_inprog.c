
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int inprog; } ;


 int PCM_LOCKASSERT (struct snddev_info*) ;

int
pcm_inprog(struct snddev_info *d, int delta)
{
 PCM_LOCKASSERT(d);

 d->inprog += delta;

 return (d->inprog);
}

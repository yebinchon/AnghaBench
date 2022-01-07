
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {unsigned int dvc; int lock; } ;


 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

void
spicds_setdvc(struct spicds_info *codec, unsigned int dvc)
{
 snd_mtxlock(codec->lock);
 codec->dvc = dvc;
 snd_mtxunlock(codec->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {unsigned int cif; int lock; } ;


 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

void
spicds_setcif(struct spicds_info *codec, unsigned int cif)
{
 snd_mtxlock(codec->lock);
 codec->cif = cif;
 snd_mtxunlock(codec->lock);
}

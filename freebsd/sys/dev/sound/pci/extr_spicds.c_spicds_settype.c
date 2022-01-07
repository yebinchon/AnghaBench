
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {unsigned int type; int lock; } ;


 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

void
spicds_settype(struct spicds_info *codec, unsigned int type)
{
 snd_mtxlock(codec->lock);
 codec->type = type;
 snd_mtxunlock(codec->lock);
}

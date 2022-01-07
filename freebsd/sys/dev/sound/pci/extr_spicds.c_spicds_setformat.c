
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {unsigned int format; int lock; } ;


 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

void
spicds_setformat(struct spicds_info *codec, unsigned int format)
{
 snd_mtxlock(codec->lock);
 codec->format = format;
 snd_mtxunlock(codec->lock);
}

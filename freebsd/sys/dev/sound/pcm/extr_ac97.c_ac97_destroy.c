
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_info {int lock; int * methods; } ;


 int M_AC97 ;
 int free (struct ac97_info*,int ) ;
 int kobj_delete (int *,int ) ;
 int snd_mtxfree (int ) ;
 int snd_mtxlock (int ) ;

void
ac97_destroy(struct ac97_info *codec)
{
 snd_mtxlock(codec->lock);
 if (codec->methods != ((void*)0))
  kobj_delete(codec->methods, M_AC97);
 snd_mtxfree(codec->lock);
 free(codec, M_AC97);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {int lock; } ;


 int M_SPICDS ;
 int free (struct spicds_info*,int ) ;
 int snd_mtxfree (int ) ;

void
spicds_destroy(struct spicds_info *codec)
{
 snd_mtxfree(codec->lock);
 free(codec, M_SPICDS);
}

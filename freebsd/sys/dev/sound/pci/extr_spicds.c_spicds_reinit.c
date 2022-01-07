
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {scalar_t__ type; int format; int dvc; int lock; } ;


 int AK4524_DVC ;
 int AK4524_FORMAT ;
 int AK4524_RESET ;
 int AK452X_RESET_RSAD ;
 int AK452X_RESET_RSDA ;
 scalar_t__ SPICDS_TYPE_WM8770 ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int spicds_wrcd (struct spicds_info*,int ,int) ;

void
spicds_reinit(struct spicds_info *codec)
{
 snd_mtxlock(codec->lock);
 if (codec->type != SPICDS_TYPE_WM8770) {

  spicds_wrcd(codec, AK4524_RESET, 0);

  spicds_wrcd(codec, AK4524_FORMAT, codec->format);
  spicds_wrcd(codec, AK4524_DVC, codec->dvc);

  spicds_wrcd(codec, AK4524_RESET,
      AK452X_RESET_RSDA | AK452X_RESET_RSAD);
 } else {



 }
 snd_mtxunlock(codec->lock);
}

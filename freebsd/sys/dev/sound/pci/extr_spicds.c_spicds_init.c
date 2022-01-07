
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {scalar_t__ type; int format; int dvc; int lock; int dev; } ;


 int AK4524_DVC ;
 int AK4524_FORMAT ;
 int AK4524_POWER ;
 int AK4524_RESET ;
 int AK452X_POWER_PWAD ;
 int AK452X_POWER_PWDA ;
 int AK452X_POWER_PWVR ;
 int AK452X_RESET_RSAD ;
 int AK452X_RESET_RSDA ;
 scalar_t__ SPICDS_TYPE_AK4358 ;
 scalar_t__ SPICDS_TYPE_AK4381 ;
 scalar_t__ SPICDS_TYPE_AK4396 ;
 scalar_t__ SPICDS_TYPE_AK4524 ;
 scalar_t__ SPICDS_TYPE_AK4528 ;
 scalar_t__ SPICDS_TYPE_WM8770 ;
 int device_printf (int ,char*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int spicds_wrcd (struct spicds_info*,int,int) ;

void
spicds_init(struct spicds_info *codec)
{



 snd_mtxlock(codec->lock);
 if (codec->type == SPICDS_TYPE_AK4524 || codec->type == SPICDS_TYPE_AK4528) {


  spicds_wrcd(codec, AK4524_POWER, 0);

  spicds_wrcd(codec, AK4524_FORMAT, codec->format);
  spicds_wrcd(codec, AK4524_DVC, codec->dvc);

  spicds_wrcd(codec, AK4524_POWER,
      AK452X_POWER_PWDA | AK452X_POWER_PWAD | AK452X_POWER_PWVR);

  spicds_wrcd(codec, AK4524_RESET,
      AK452X_RESET_RSDA | AK452X_RESET_RSAD);
 }
 if (codec->type == SPICDS_TYPE_WM8770) {



  spicds_wrcd(codec, 0x1b, 0x044);
  spicds_wrcd(codec, 0x1c, 0x00B);
  spicds_wrcd(codec, 0x1d, 0x009);

  spicds_wrcd(codec, 0x18, 0x000);

  spicds_wrcd(codec, 0x16, 0x122);
  spicds_wrcd(codec, 0x17, 0x022);

  spicds_wrcd(codec, 0x19, 0x000);
  spicds_wrcd(codec, 0x1a, 0x000);
 }
 if (codec->type == SPICDS_TYPE_AK4358)
  spicds_wrcd(codec, 0x00, 0x07);
 if (codec->type == SPICDS_TYPE_AK4381)
  spicds_wrcd(codec, 0x00, 0x8f);
 if (codec->type == SPICDS_TYPE_AK4396)
  spicds_wrcd(codec, 0x00, 0x07);
 snd_mtxunlock(codec->lock);
}

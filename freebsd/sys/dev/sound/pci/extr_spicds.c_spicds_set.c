
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {int type; int lock; int dev; } ;


 int AK4358_LO1ATT ;
 unsigned int AK4358_OATT_ENABLE ;
 int AK4358_RO1ATT ;
 int AK4381_LOATT ;
 int AK4381_ROATT ;
 int AK4396_LOATT ;
 int AK4396_ROATT ;
 int AK4524_LIPGA ;
 int AK4524_LOATT ;
 int AK4524_RIPGA ;
 int AK4524_ROATT ;
 int AK4528_LOATT ;
 int AK4528_ROATT ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int const SPICDS_TYPE_AK4358 ;


 int SPICDS_TYPE_AK4524 ;
 int SPICDS_TYPE_AK4528 ;

 int WM8770_AOATT_L1 ;
 int WM8770_AOATT_R1 ;
 unsigned int WM8770_AOATT_UPDATE ;
 int device_printf (int ,char*,unsigned int,unsigned int,...) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int spicds_wrcd (struct spicds_info*,int ,unsigned int) ;

void
spicds_set(struct spicds_info *codec, int dir, unsigned int left, unsigned int right)
{



 snd_mtxlock(codec->lock);
 if (left >= 100)
  if ((codec->type == 130) || (codec->type == 129))

   left = 255;
  else
   left = 127;
 else
  switch (codec->type) {
  case 128:
   left = left + 27;
   break;
  case 130:
  case 129:
   left = left * 255 / 100;
   break;
  default:
   left = left * 127 / 100;
  }
 if (right >= 100)
  if ((codec->type == 130) || (codec->type == 129))

                        right = 255;
                else
   right = 127;
 else
  switch (codec->type) {
  case 128:
                        right = right + 27;
   break;
  case 130:
  case 129:
   right = right * 255 / 100;
   break;
                default:
                        right = right * 127 / 100;
  }
 if (dir == PCMDIR_REC && codec->type == SPICDS_TYPE_AK4524) {



  spicds_wrcd(codec, AK4524_LIPGA, left);
  spicds_wrcd(codec, AK4524_RIPGA, right);
 }
 if (dir == PCMDIR_PLAY && codec->type == SPICDS_TYPE_AK4524) {



  spicds_wrcd(codec, AK4524_LOATT, left);
  spicds_wrcd(codec, AK4524_ROATT, right);
 }
 if (dir == PCMDIR_PLAY && codec->type == SPICDS_TYPE_AK4528) {



  spicds_wrcd(codec, AK4528_LOATT, left);
  spicds_wrcd(codec, AK4528_ROATT, right);
 }
        if (dir == PCMDIR_PLAY && codec->type == 128) {



                spicds_wrcd(codec, WM8770_AOATT_L1, left | WM8770_AOATT_UPDATE);
                spicds_wrcd(codec, WM8770_AOATT_R1, right | WM8770_AOATT_UPDATE);
        }
        if (dir == PCMDIR_PLAY && codec->type == SPICDS_TYPE_AK4358) {



                spicds_wrcd(codec, AK4358_LO1ATT, left | AK4358_OATT_ENABLE);
                spicds_wrcd(codec, AK4358_RO1ATT, right | AK4358_OATT_ENABLE);
        }
        if (dir == PCMDIR_PLAY && codec->type == 130) {



                spicds_wrcd(codec, AK4381_LOATT, left);
                spicds_wrcd(codec, AK4381_ROATT, right);
        }

        if (dir == PCMDIR_PLAY && codec->type == 129) {



                spicds_wrcd(codec, AK4396_LOATT, left);
                spicds_wrcd(codec, AK4396_ROATT, right);
        }

 snd_mtxunlock(codec->lock);
}

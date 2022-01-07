
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {int num; int format; int dvc; scalar_t__ cif; int type; void* devinfo; int ctrl; int dev; int name; int lock; } ;
typedef int spicds_ctrl ;
typedef int device_t ;


 int AK452X_DVC_DEMOFF ;
 int AK452X_DVC_ZCE ;
 int AK452X_DVC_ZTM1024 ;
 int AK452X_FORMAT_1X ;
 int AK452X_FORMAT_256FSN ;
 int AK452X_FORMAT_I2S ;
 int M_NOWAIT ;
 int M_SPICDS ;
 int SPICDS_NAMELEN ;
 int SPICDS_TYPE_AK4524 ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ malloc (int,int ,int ) ;
 int snd_mtxcreate (int ,int ) ;
 int snprintf (int ,int ,char*,char*,int) ;

struct spicds_info *
spicds_create(device_t dev, void *devinfo, int num, spicds_ctrl ctrl)
{
 struct spicds_info *codec;




 codec = (struct spicds_info *)malloc(sizeof *codec, M_SPICDS, M_NOWAIT);
 if (codec == ((void*)0))
  return ((void*)0);

 snprintf(codec->name, SPICDS_NAMELEN, "%s:spicds%d", device_get_nameunit(dev), num);
 codec->lock = snd_mtxcreate(codec->name, codec->name);
 codec->dev = dev;
 codec->ctrl = ctrl;
 codec->devinfo = devinfo;
 codec->num = num;
 codec->type = SPICDS_TYPE_AK4524;
 codec->cif = 0;
 codec->format = AK452X_FORMAT_I2S | AK452X_FORMAT_256FSN | AK452X_FORMAT_1X;
 codec->dvc = AK452X_DVC_DEMOFF | AK452X_DVC_ZTM1024 | AK452X_DVC_ZCE;

 return codec;
}

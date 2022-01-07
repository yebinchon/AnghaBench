
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdaa_devinfo {int nid; int dev; } ;
typedef int device_t ;


 int APPLE_INTEL_MAC ;
 int HDA_CMD_12BIT (int ,int ,int,int) ;

 int HDA_CODEC_ALC255 ;
 int HDA_CODEC_ALC256 ;
 int HDA_CODEC_ALC269 ;
 int hda_command (int ,int ) ;
 int hdaa_card_id (struct hdaa_devinfo*) ;
 int hdaa_codec_id (struct hdaa_devinfo*) ;
 int hdaa_read_coef (int ,int,int) ;
 int hdaa_write_coef (int ,int,int,int) ;

void
hdaa_patch_direct(struct hdaa_devinfo *devinfo)
{
 device_t dev = devinfo->dev;
 uint32_t id, subid, val;

 id = hdaa_codec_id(devinfo);
 subid = hdaa_card_id(devinfo);

 switch (id) {
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:

  hda_command(dev, HDA_CMD_12BIT(0, devinfo->nid,
      0xf98, 0x01));

 case 128:

  hda_command(dev, HDA_CMD_12BIT(0, devinfo->nid,
      0xf88, 0xc0));
  break;
 case 137:
  if (subid == 0xd9781462) {

   hdaa_write_coef(dev, 0x20, 0x07, 0x7cb);
  }
  break;
 }
 if (id == HDA_CODEC_ALC255 || id == HDA_CODEC_ALC256) {
  val = hdaa_read_coef(dev, 0x20, 0x46);
  hdaa_write_coef(dev, 0x20, 0x46, val|0x3000);
 }
 if (subid == APPLE_INTEL_MAC)
  hda_command(dev, HDA_CMD_12BIT(0, devinfo->nid,
      0x7e7, 0));
 if (id == HDA_CODEC_ALC269) {
  if (subid == 0x16e31043 || subid == 0x831a1043 ||
      subid == 0x834a1043 || subid == 0x83981043 ||
      subid == 0x83ce1043) {






   val = hdaa_read_coef(dev, 0x20, 0x07);
   hdaa_write_coef(dev, 0x20, 0x07, val|0x80);
  }
  if (subid == 0x15171043) {

   hdaa_write_coef(dev, 0x20, 0x12, 0x2800);
  }
 }
}

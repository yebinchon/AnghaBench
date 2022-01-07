
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_info {int dummy; } ;


 int AC97_MIXEXT_CLFE ;
 int AC97_REG_POWER ;
 int ac97_getsubvendor (struct ac97_info*) ;
 int ac97_wrcd (struct ac97_info*,int,int) ;

void cmi9739_patch(struct ac97_info* codec)
{




 switch (ac97_getsubvendor(codec)) {
 case 0x18431043:
  ac97_wrcd(codec, AC97_REG_POWER, 0x000f);
  ac97_wrcd(codec, AC97_MIXEXT_CLFE, 0x0000);
  ac97_wrcd(codec, 0x64, 0x7110);
  break;
 default:
  break;
 }
}

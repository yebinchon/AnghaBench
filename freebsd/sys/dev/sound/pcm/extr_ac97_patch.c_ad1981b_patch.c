
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_info {int dummy; } ;


 int AC97_AD_JACK_SPDIF ;
 int ac97_getsubvendor (struct ac97_info*) ;
 int ac97_rdcd (struct ac97_info*,int ) ;
 int ac97_wrcd (struct ac97_info*,int ,int) ;

void ad1981b_patch(struct ac97_info* codec)
{



 switch (ac97_getsubvendor(codec)) {
 case 0x02d91014:
 case 0x099c103c:
  ac97_wrcd(codec, AC97_AD_JACK_SPDIF,
      ac97_rdcd(codec, AC97_AD_JACK_SPDIF) | 0x0800);
  break;
 default:
  break;
 }
}

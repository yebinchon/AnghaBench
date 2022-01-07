
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_info {int dummy; } ;


 int ac97_getsubvendor (struct ac97_info*) ;
 int ac97_rdcd (struct ac97_info*,int) ;
 int ac97_wrcd (struct ac97_info*,int,int) ;

void alc655_patch(struct ac97_info* codec)
{



 switch (ac97_getsubvendor(codec)) {
 case 0x00611462:
 case 0x01311462:
 case 0x01611462:
 case 0x03511462:
  ac97_wrcd(codec, 0x7a, ac97_rdcd(codec, 0x7a) & 0xfffd);
  break;
 case 0x10ca1734:






  ac97_wrcd(codec, 0x6a, ac97_rdcd(codec, 0x6a) | 0x0001);
  break;
 default:
  break;
 }
}

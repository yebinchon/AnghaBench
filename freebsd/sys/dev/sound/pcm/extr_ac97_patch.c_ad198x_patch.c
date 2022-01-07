
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_info {int dummy; } ;


 int ac97_getsubvendor (struct ac97_info*) ;
 int ac97_rdcd (struct ac97_info*,int) ;
 int ac97_wrcd (struct ac97_info*,int,int) ;

void ad198x_patch(struct ac97_info* codec)
{
 switch (ac97_getsubvendor(codec)) {
 case 0x11931043:
  break;
 default:
  ac97_wrcd(codec, 0x76, ac97_rdcd(codec, 0x76) | 0x0420);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_info {int dummy; } ;


 int AC97_AD_JACK_SPDIF ;
 int ac97_wrcd (struct ac97_info*,int ,int) ;

void ad1886_patch(struct ac97_info* codec)
{







 ac97_wrcd(codec, 0x72, 0x0010);
}

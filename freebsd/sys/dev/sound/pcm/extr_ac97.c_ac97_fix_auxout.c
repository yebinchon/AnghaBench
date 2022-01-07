
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ac97_info {int extcaps; TYPE_1__* mix; } ;
struct TYPE_2__ {int reg; } ;


 int AC97_EXTCAP_SDAC ;
 int AC97_MIXEXT_SURROUND ;
 int AC97_MIX_AUXOUT ;
 size_t SOUND_MIXER_OGAIN ;
 int ac97_rdcd (struct ac97_info*,int ) ;
 int bzero (TYPE_1__*,int) ;

__attribute__((used)) static void
ac97_fix_auxout(struct ac97_info *codec)
{
 int keep_ogain;
 keep_ogain = ac97_rdcd(codec, AC97_MIX_AUXOUT) & 0x8000;
 if (codec->extcaps & AC97_EXTCAP_SDAC &&
     ac97_rdcd(codec, AC97_MIXEXT_SURROUND) == 0x8080) {
  codec->mix[SOUND_MIXER_OGAIN].reg = AC97_MIXEXT_SURROUND;
  keep_ogain = 1;
 }

 if (keep_ogain == 0) {
  bzero(&codec->mix[SOUND_MIXER_OGAIN],
        sizeof(codec->mix[SOUND_MIXER_OGAIN]));
 }
}

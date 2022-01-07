
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_info {int id; int caps; int se; int * mix; } ;


 int AC97_CAP_TONE ;
 size_t SOUND_MIXER_BASS ;
 size_t SOUND_MIXER_TREBLE ;
 int bzero (int *,int) ;

__attribute__((used)) static void
ac97_fix_tone(struct ac97_info *codec)
{




 switch (codec->id) {
 case 0x594d4800:
 case 0x594d4803:
  codec->caps |= AC97_CAP_TONE;
  codec->se |= 0x04;
  break;
 case 0x594d4802:
  codec->se |= 0x04;
  break;
 default:
  break;
 }


 if ((codec->caps & AC97_CAP_TONE) == 0) {
  bzero(&codec->mix[SOUND_MIXER_BASS],
        sizeof(codec->mix[SOUND_MIXER_BASS]));
  bzero(&codec->mix[SOUND_MIXER_TREBLE],
        sizeof(codec->mix[SOUND_MIXER_TREBLE]));
 }
}

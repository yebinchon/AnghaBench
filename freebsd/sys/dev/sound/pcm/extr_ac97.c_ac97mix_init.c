
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct snd_mixer {int dummy; } ;
struct ac97_info {int id; TYPE_1__* mix; int dev; int subvendor; } ;
struct TYPE_2__ {int enable; scalar_t__ recidx; } ;


 size_t AC97_MIXER_SIZE ;
 int AC97_MIX_MASTER ;
 int AC97_MIX_PCM ;
 int SD_F_SOFTPCMVOL ;
 size_t SOUND_MASK_CD ;
 size_t SOUND_MASK_OGAIN ;
 size_t SOUND_MASK_PCM ;
 size_t SOUND_MASK_PHONEOUT ;
 size_t SOUND_MIXER_NONE ;
 size_t SOUND_MIXER_OGAIN ;
 size_t SOUND_MIXER_PCM ;
 size_t SOUND_MIXER_PHONEOUT ;
 size_t SOUND_MIXER_VOLUME ;
 int ac97_init_sysctl (struct ac97_info*) ;
 scalar_t__ ac97_initmixer (struct ac97_info*) ;
 int ac97_wrcd (struct ac97_info*,int ,int ) ;
 int bzero (TYPE_1__*,int) ;
 struct ac97_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,size_t) ;
 int mix_setparentchild (struct snd_mixer*,size_t,size_t) ;
 int mix_setrealdev (struct snd_mixer*,size_t,size_t) ;
 int mix_setrecdevs (struct snd_mixer*,size_t) ;
 int pcm_getflags (int ) ;
 int pcm_setflags (int ,int) ;

__attribute__((used)) static int
ac97mix_init(struct snd_mixer *m)
{
 struct ac97_info *codec = mix_getdevinfo(m);
 u_int32_t i, mask;

 if (codec == ((void*)0))
  return -1;

 if (ac97_initmixer(codec))
  return -1;

 switch (codec->id) {
 case 0x41445374:
  switch (codec->subvendor) {
  case 0x02d91014:







   mask = 0;
   if (codec->mix[SOUND_MIXER_OGAIN].enable)
    mask |= SOUND_MASK_OGAIN;
   if (codec->mix[SOUND_MIXER_PHONEOUT].enable)
    mask |= SOUND_MASK_PHONEOUT;
   if (codec->mix[SOUND_MIXER_VOLUME].enable)
    mix_setparentchild(m, SOUND_MIXER_VOLUME,
        mask);
   else {
    mix_setparentchild(m, SOUND_MIXER_VOLUME,
        mask);
    mix_setrealdev(m, SOUND_MIXER_VOLUME,
        SOUND_MIXER_NONE);
   }
   break;
  case 0x099c103c:
   codec->mix[SOUND_MIXER_OGAIN].enable = 1;
   codec->mix[SOUND_MIXER_PHONEOUT].enable = 1;
   mix_setrealdev(m, SOUND_MIXER_PHONEOUT,
       SOUND_MIXER_VOLUME);
   mix_setrealdev(m, SOUND_MIXER_VOLUME,
       SOUND_MIXER_NONE);
   mix_setparentchild(m, SOUND_MIXER_VOLUME,
       SOUND_MASK_OGAIN | SOUND_MASK_PHONEOUT);
   break;
  default:
   break;
  }
  break;
 case 0x434d4941:
 case 0x434d4961:
 case 0x434d4978:
 case 0x434d4982:
 case 0x434d4983:
  bzero(&codec->mix[SOUND_MIXER_PCM],
      sizeof(codec->mix[SOUND_MIXER_PCM]));
  pcm_setflags(codec->dev, pcm_getflags(codec->dev) |
      SD_F_SOFTPCMVOL);

  break;
 default:
  break;
 }

 if (pcm_getflags(codec->dev) & SD_F_SOFTPCMVOL)
  ac97_wrcd(codec, AC97_MIX_PCM, 0);
 mask = 0;
 for (i = 0; i < AC97_MIXER_SIZE; i++)
  mask |= codec->mix[i].enable? 1 << i : 0;
 mix_setdevs(m, mask);

 mask = 0;
 for (i = 0; i < AC97_MIXER_SIZE; i++)
  mask |= codec->mix[i].recidx? 1 << i : 0;
 mix_setrecdevs(m, mask);

 ac97_init_sysctl(codec);

 return 0;
}

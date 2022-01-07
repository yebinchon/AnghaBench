
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct sb_info {int dummy; } ;


 int SOUND_MASK_BASS ;
 int SOUND_MASK_CD ;
 int SOUND_MASK_IGAIN ;
 int SOUND_MASK_LINE ;
 int SOUND_MASK_LINE1 ;
 int SOUND_MASK_MIC ;
 int SOUND_MASK_OGAIN ;
 int SOUND_MASK_PCM ;
 int SOUND_MASK_SPEAKER ;
 int SOUND_MASK_SYNTH ;
 int SOUND_MASK_TREBLE ;
 int SOUND_MASK_VOLUME ;
 struct sb_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int mix_setrecdevs (struct snd_mixer*,int) ;
 int sb_setmixer (struct sb_info*,int,int) ;

__attribute__((used)) static int
sb16mix_init(struct snd_mixer *m)
{
     struct sb_info *sb = mix_getdevinfo(m);

 mix_setdevs(m, SOUND_MASK_SYNTH | SOUND_MASK_PCM | SOUND_MASK_SPEAKER |
              SOUND_MASK_LINE | SOUND_MASK_MIC | SOUND_MASK_CD |
              SOUND_MASK_IGAIN | SOUND_MASK_OGAIN | SOUND_MASK_LINE1 |
              SOUND_MASK_VOLUME | SOUND_MASK_BASS | SOUND_MASK_TREBLE);

 mix_setrecdevs(m, SOUND_MASK_SYNTH | SOUND_MASK_LINE |
     SOUND_MASK_LINE1 | SOUND_MASK_MIC | SOUND_MASK_CD);

 sb_setmixer(sb, 0x3c, 0x1f);

 sb_setmixer(sb, 0x3d, 0);
 sb_setmixer(sb, 0x3e, 0);

 return 0;
}

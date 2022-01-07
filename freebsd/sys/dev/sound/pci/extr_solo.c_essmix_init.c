
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct ess_info {int dummy; } ;


 int SOUND_MASK_CD ;
 int SOUND_MASK_IMIX ;
 int SOUND_MASK_LINE ;
 int SOUND_MASK_LINE1 ;
 int SOUND_MASK_MIC ;
 int SOUND_MASK_PCM ;
 int SOUND_MASK_SYNTH ;
 int SOUND_MASK_VOLUME ;
 int ess_setmixer (struct ess_info*,int ,int ) ;
 struct ess_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int mix_setrecdevs (struct snd_mixer*,int) ;

__attribute__((used)) static int
essmix_init(struct snd_mixer *m)
{
     struct ess_info *sc = mix_getdevinfo(m);

 mix_setrecdevs(m, SOUND_MASK_CD | SOUND_MASK_MIC | SOUND_MASK_LINE |
     SOUND_MASK_IMIX);

 mix_setdevs(m, SOUND_MASK_SYNTH | SOUND_MASK_PCM | SOUND_MASK_LINE |
         SOUND_MASK_MIC | SOUND_MASK_CD | SOUND_MASK_VOLUME |
         SOUND_MASK_LINE1);

 ess_setmixer(sc, 0, 0);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct snd_mixer {int dummy; } ;
struct sc_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ rec; scalar_t__ bits; } ;


 int CMPCI_SB16_MIXER_ADCMIX_L ;
 int CMPCI_SB16_MIXER_ADCMIX_R ;
 int CMPCI_SB16_MIXER_OUTMIX ;
 int CMPCI_SB16_MIXER_RESET ;
 int CMPCI_SB16_SW_CD ;
 int CMPCI_SB16_SW_LINE ;
 int CMPCI_SB16_SW_MIC ;
 size_t SOUND_MIXER_NRDEVICES ;
 int cmimix_wr (struct sc_info*,int ,int) ;
 TYPE_1__* cmt ;
 struct sc_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,size_t) ;
 int mix_setrecdevs (struct snd_mixer*,size_t) ;

__attribute__((used)) static int
cmimix_init(struct snd_mixer *m)
{
 struct sc_info *sc = mix_getdevinfo(m);
 u_int32_t i,v;

 for(i = v = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (cmt[i].bits) v |= 1 << i;
 }
 mix_setdevs(m, v);

 for(i = v = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (cmt[i].rec) v |= 1 << i;
 }
 mix_setrecdevs(m, v);

 cmimix_wr(sc, CMPCI_SB16_MIXER_RESET, 0);
 cmimix_wr(sc, CMPCI_SB16_MIXER_ADCMIX_L, 0);
 cmimix_wr(sc, CMPCI_SB16_MIXER_ADCMIX_R, 0);
 cmimix_wr(sc, CMPCI_SB16_MIXER_OUTMIX,
    CMPCI_SB16_SW_CD | CMPCI_SB16_SW_MIC | CMPCI_SB16_SW_LINE);
 return 0;
}

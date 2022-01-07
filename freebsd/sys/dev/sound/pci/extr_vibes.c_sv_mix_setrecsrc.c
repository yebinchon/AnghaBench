
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct sc_info {int dummy; } ;
struct TYPE_2__ {int iselect; } ;


 int DEB (int ) ;
 int SOUND_MIXER_NRDEVICES ;
 int SV_INPUT_GAIN_MASK ;
 int SV_REG_ADC_INPUT ;
 struct sc_info* mix_getdevinfo (struct snd_mixer*) ;
 TYPE_1__* mt ;
 int printf (char*,int,int) ;
 int sv_indirect_get (struct sc_info*,int ) ;
 int sv_indirect_set (struct sc_info*,int ,int) ;

__attribute__((used)) static u_int32_t
sv_mix_setrecsrc(struct snd_mixer *m, u_int32_t mask)
{
 struct sc_info *sc = mix_getdevinfo(m);
 u_int32_t i, v;

 v = sv_indirect_get(sc, SV_REG_ADC_INPUT) & SV_INPUT_GAIN_MASK;
 for(i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if ((1 << i) & mask) {
   v |= mt[i].iselect;
  }
 }
 DEB(printf("sv_mix_setrecsrc: mask 0x%08x adc_input 0x%02x\n", mask, v));
 sv_indirect_set(sc, SV_REG_ADC_INPUT, v);
 return mask;
}

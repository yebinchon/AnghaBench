
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct snd_mixer {int dummy; } ;
struct onyx_softc {int dummy; } ;
struct TYPE_2__ {int INFO_4; int INFO_3; int INFO_2; int INFO_1; int ADC_HPF_BP; int ADC_CONTROL; int OUT_PHASE; int DAC_FILTER; int DAC_DEEMPH; int DAC_CONTROL; int CONTROL; int RIGHT_ATTN; int LEFT_ATTN; } ;


 int PCM3052_REG_ADC_CONTROL ;
 int PCM3052_REG_ADC_HPF_BP ;
 int PCM3052_REG_CONTROL ;
 int PCM3052_REG_DAC_CONTROL ;
 int PCM3052_REG_DAC_DEEMPH ;
 int PCM3052_REG_DAC_FILTER ;
 int PCM3052_REG_INFO_1 ;
 int PCM3052_REG_INFO_2 ;
 int PCM3052_REG_INFO_3 ;
 int PCM3052_REG_INFO_4 ;
 int PCM3052_REG_LEFT_ATTN ;
 int PCM3052_REG_OUT_PHASE ;
 int PCM3052_REG_RIGHT_ATTN ;
 int SOUND_MASK_VOLUME ;
 struct onyx_softc* device_get_softc (int ) ;
 int mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int ) ;
 TYPE_1__ onyx_initdata ;
 int onyx_write (struct onyx_softc*,int ,int ) ;

__attribute__((used)) static int
onyx_init(struct snd_mixer *m)
{
 struct onyx_softc *sc;
 u_int x = 0;

 sc = device_get_softc(mix_getdevinfo(m));

 onyx_write(sc, PCM3052_REG_LEFT_ATTN, onyx_initdata.LEFT_ATTN);
 onyx_write(sc, PCM3052_REG_RIGHT_ATTN, onyx_initdata.RIGHT_ATTN);
 onyx_write(sc, PCM3052_REG_CONTROL, onyx_initdata.CONTROL);
 onyx_write(sc, PCM3052_REG_DAC_CONTROL,
        onyx_initdata.DAC_CONTROL);
 onyx_write(sc, PCM3052_REG_DAC_DEEMPH, onyx_initdata.DAC_DEEMPH);
 onyx_write(sc, PCM3052_REG_DAC_FILTER, onyx_initdata.DAC_FILTER);
 onyx_write(sc, PCM3052_REG_OUT_PHASE, onyx_initdata.OUT_PHASE);
 onyx_write(sc, PCM3052_REG_ADC_CONTROL,
        onyx_initdata.ADC_CONTROL);
 onyx_write(sc, PCM3052_REG_ADC_HPF_BP, onyx_initdata.ADC_HPF_BP);
 onyx_write(sc, PCM3052_REG_INFO_1, onyx_initdata.INFO_1);
 onyx_write(sc, PCM3052_REG_INFO_2, onyx_initdata.INFO_2);
 onyx_write(sc, PCM3052_REG_INFO_3, onyx_initdata.INFO_3);
 onyx_write(sc, PCM3052_REG_INFO_4, onyx_initdata.INFO_4);

 x |= SOUND_MASK_VOLUME;
 mix_setdevs(m, x);

 return (0);
}

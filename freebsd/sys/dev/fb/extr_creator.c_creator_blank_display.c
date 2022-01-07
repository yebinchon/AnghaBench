
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int uint32_t ;
struct creator_softc {int dummy; } ;


 int FFB_DAC ;
 int FFB_DAC_CFG_TGEN ;
 int FFB_DAC_CFG_TGEN_VIDE ;
 int FFB_DAC_TYPE ;
 int FFB_DAC_VALUE ;
 int FFB_READ (struct creator_softc*,int ,int ) ;
 int FFB_WRITE (struct creator_softc*,int ,int ,int ) ;





__attribute__((used)) static int
creator_blank_display(video_adapter_t *adp, int mode)
{
 struct creator_softc *sc;
 uint32_t v;
 int i;

 sc = (struct creator_softc *)adp;
 FFB_WRITE(sc, FFB_DAC, FFB_DAC_TYPE, FFB_DAC_CFG_TGEN);
 v = FFB_READ(sc, FFB_DAC, FFB_DAC_VALUE);
 switch (mode) {
 case 130:
  v |= FFB_DAC_CFG_TGEN_VIDE;
  break;
 case 131:
 case 129:
 case 128:
  v &= ~FFB_DAC_CFG_TGEN_VIDE;
  break;
 }
 FFB_WRITE(sc, FFB_DAC, FFB_DAC_TYPE, FFB_DAC_CFG_TGEN);
 FFB_WRITE(sc, FFB_DAC, FFB_DAC_VALUE, v);
 for (i = 0; i < 10; i++) {
  FFB_WRITE(sc, FFB_DAC, FFB_DAC_TYPE, FFB_DAC_CFG_TGEN);
  (void)FFB_READ(sc, FFB_DAC, FFB_DAC_VALUE);
 }
 return (0);
}

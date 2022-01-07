
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int uint8_t ;
typedef int u_char ;
struct machfb_softc {int dummy; } ;


 int DAC_DATA ;
 int DAC_MASK ;
 int DAC_RINDEX ;
 int DAC_WINDEX ;
 int regrb (struct machfb_softc*,int ) ;
 int regwb (struct machfb_softc*,int ,int) ;

__attribute__((used)) static int
machfb_load_palette(video_adapter_t *adp, u_char *palette)
{
 struct machfb_softc *sc;
 int i;
 uint8_t dac_mask, dac_rindex, dac_windex;

 sc = (struct machfb_softc *)adp;

 dac_rindex = regrb(sc, DAC_RINDEX);
 dac_windex = regrb(sc, DAC_WINDEX);
 dac_mask = regrb(sc, DAC_MASK);
 regwb(sc, DAC_MASK, 0xff);
 regwb(sc, DAC_WINDEX, 0x0);
 for (i = 0; i < 256 * 3; i++)
  regwb(sc, DAC_DATA, palette[i]);
 regwb(sc, DAC_MASK, dac_mask);
 regwb(sc, DAC_RINDEX, dac_rindex);
 regwb(sc, DAC_WINDEX, dac_windex);

 return (0);
}

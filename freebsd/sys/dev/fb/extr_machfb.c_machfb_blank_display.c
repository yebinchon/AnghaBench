
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int uint32_t ;
struct machfb_softc {int dummy; } ;


 int CRTC_DISPLAY_DIS ;
 int CRTC_EN ;
 int CRTC_EXT_DISP_EN ;
 int CRTC_GEN_CNTL ;
 int CRTC_HSYNC_DIS ;
 int CRTC_VSYNC_DIS ;




 int regr (struct machfb_softc*,int ) ;
 int regw (struct machfb_softc*,int ,int) ;

__attribute__((used)) static int
machfb_blank_display(video_adapter_t *adp, int mode)
{
 struct machfb_softc *sc;
 uint32_t crtc_gen_cntl;

 sc = (struct machfb_softc *)adp;

 crtc_gen_cntl = (regr(sc, CRTC_GEN_CNTL) | CRTC_EXT_DISP_EN | CRTC_EN) &
     ~(CRTC_HSYNC_DIS | CRTC_VSYNC_DIS | CRTC_DISPLAY_DIS);
 switch (mode) {
 case 130:
  break;
 case 131:
  crtc_gen_cntl |= CRTC_HSYNC_DIS | CRTC_VSYNC_DIS |
      CRTC_DISPLAY_DIS;
  break;
 case 129:
  crtc_gen_cntl |= CRTC_HSYNC_DIS | CRTC_DISPLAY_DIS;
  break;
 case 128:
  crtc_gen_cntl |= CRTC_VSYNC_DIS | CRTC_DISPLAY_DIS;
  break;
 }
 regw(sc, CRTC_GEN_CNTL, crtc_gen_cntl);

 return (0);
}

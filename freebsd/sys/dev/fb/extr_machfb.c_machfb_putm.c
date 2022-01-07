
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct machfb_softc {int sc_flags; int sc_ymargin; int sc_xmargin; } ;


 int CRTC_DBL_SCAN_EN ;
 int CUR_HORZ_VERT_OFF ;
 int CUR_HORZ_VERT_POSN ;
 int GEN_TEST_CNTL ;
 int MACHFB_CUREN ;
 int machfb_cursor_enable (struct machfb_softc*,int) ;
 int machfb_cursor_install (struct machfb_softc*) ;
 int regr (struct machfb_softc*,int ) ;
 int regw (struct machfb_softc*,int ,int) ;

__attribute__((used)) static int
machfb_putm(video_adapter_t *adp, int x, int y, uint8_t *pixel_image,
    uint32_t pixel_mask, int size, int width)
{
 struct machfb_softc *sc;
 int error;

 sc = (struct machfb_softc *)adp;

 if ((!(sc->sc_flags & MACHFB_CUREN)) &&
     (error = machfb_cursor_install(sc)) < 0)
  return (error);
 else {





  machfb_cursor_enable(sc, 0);
 }

 regw(sc, CUR_HORZ_VERT_OFF, 0);
 if ((regr(sc, GEN_TEST_CNTL) & CRTC_DBL_SCAN_EN) != 0)
  y <<= 1;
 regw(sc, CUR_HORZ_VERT_POSN, ((y + sc->sc_ymargin) << 16) |
     (x + sc->sc_xmargin));
 machfb_cursor_enable(sc, 1);
 sc->sc_flags |= MACHFB_CUREN;

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
struct machfb_softc {scalar_t__ sc_draw_cache; } ;


 int CLR_CMP_CNTL ;
 int DP_MIX ;
 int DP_PIX_WIDTH ;
 int DP_SRC ;
 int DP_WRITE_MASK ;
 int DST_8BPP ;
 int DST_CNTL ;
 int DST_HEIGHT_WIDTH ;
 int DST_X_LEFT_TO_RIGHT ;
 int DST_Y_TOP_TO_BOTTOM ;
 int DST_Y_X ;
 int FRGD_SRC_FRGD_CLR ;
 int HOST_8BPP ;
 scalar_t__ MACHFB_DRAW_FILLRECT ;
 int MIX_SRC ;
 int SRC_8BPP ;
 int SRC_CNTL ;
 int SRC_LINE_X_LEFT_TO_RIGHT ;
 int SRC_WIDTH1 ;
 int SRC_Y_X ;
 int machfb_setfg (struct machfb_softc*,int) ;
 int regw (struct machfb_softc*,int ,int) ;
 int wait_for_fifo (struct machfb_softc*,int) ;

__attribute__((used)) static int
machfb_fill_rect(video_adapter_t *adp, int val, int x, int y, int cx, int cy)
{
 struct machfb_softc *sc;

 sc = (struct machfb_softc *)adp;

 if (sc->sc_draw_cache != MACHFB_DRAW_FILLRECT) {
  wait_for_fifo(sc, 7);
  regw(sc, DP_WRITE_MASK, 0xff);
  regw(sc, DP_PIX_WIDTH, DST_8BPP | SRC_8BPP | HOST_8BPP);
  regw(sc, DP_SRC, FRGD_SRC_FRGD_CLR);
  regw(sc, DP_MIX, MIX_SRC << 16);
  regw(sc, CLR_CMP_CNTL, 0);
  regw(sc, SRC_CNTL, SRC_LINE_X_LEFT_TO_RIGHT);
  regw(sc, DST_CNTL, DST_X_LEFT_TO_RIGHT | DST_Y_TOP_TO_BOTTOM);
  sc->sc_draw_cache = MACHFB_DRAW_FILLRECT;
 }
 machfb_setfg(sc, val);
 wait_for_fifo(sc, 4);
 regw(sc, SRC_Y_X, (x << 16) | y);
 regw(sc, SRC_WIDTH1, cx);
 regw(sc, DST_Y_X, (x << 16) | y);
 regw(sc, DST_HEIGHT_WIDTH, (cx << 16) | cy);

 return (0);
}

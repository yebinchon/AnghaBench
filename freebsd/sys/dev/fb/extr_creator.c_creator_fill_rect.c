
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
struct creator_softc {int dummy; } ;


 int FBC_DRAWOP_RECTANGLE ;
 int FBC_ROP_NEW ;
 int FFB_FBC ;
 int FFB_FBC_BH ;
 int FFB_FBC_BW ;
 int FFB_FBC_BX ;
 int FFB_FBC_BY ;
 int FFB_FBC_DRAWOP ;
 int FFB_FBC_ROP ;
 int FFB_WRITE (struct creator_softc*,int ,int ,int) ;
 int * creator_cmap ;
 int creator_ras_fifo_wait (struct creator_softc*,int) ;
 int creator_ras_setfg (struct creator_softc*,int ) ;
 int creator_ras_setpmask (struct creator_softc*,int) ;
 int creator_ras_wait (struct creator_softc*) ;

__attribute__((used)) static int
creator_fill_rect(video_adapter_t *adp, int val, int x, int y, int cx, int cy)
{
 struct creator_softc *sc;

 sc = (struct creator_softc *)adp;
 creator_ras_setpmask(sc, 0xffffffff);
 creator_ras_fifo_wait(sc, 2);
 FFB_WRITE(sc, FFB_FBC, FFB_FBC_ROP, FBC_ROP_NEW);
 FFB_WRITE(sc, FFB_FBC, FFB_FBC_DRAWOP, FBC_DRAWOP_RECTANGLE);
 creator_ras_setfg(sc, creator_cmap[val & 0xf]);




 creator_ras_fifo_wait(sc, 4);
 FFB_WRITE(sc, FFB_FBC, FFB_FBC_BY, y);
 FFB_WRITE(sc, FFB_FBC, FFB_FBC_BX, x);
 FFB_WRITE(sc, FFB_FBC, FFB_FBC_BH, cy);
 FFB_WRITE(sc, FFB_FBC, FFB_FBC_BW, cx);
 creator_ras_wait(sc);
 return (0);
}

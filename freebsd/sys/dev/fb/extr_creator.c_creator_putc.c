
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_4__ {int vi_width; int vi_cheight; int vi_cwidth; } ;
struct TYPE_5__ {TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
typedef int uint16_t ;
typedef int u_int8_t ;
struct creator_softc {int sc_ymargin; int sc_xmargin; scalar_t__ sc_font; } ;


 int FFB_FBC ;
 int FFB_FBC_FONT ;
 int FFB_FBC_FONTXY ;
 int FFB_WRITE (struct creator_softc*,int ,int ,int) ;
 int * creator_cmap ;
 int creator_ras_fifo_wait (struct creator_softc*,int) ;
 int creator_ras_setbg (struct creator_softc*,int ) ;
 int creator_ras_setfg (struct creator_softc*,int ) ;
 int creator_ras_setfontinc (struct creator_softc*,int) ;
 int creator_ras_setfontw (struct creator_softc*,int) ;

__attribute__((used)) static int
creator_putc(video_adapter_t *adp, vm_offset_t off, u_int8_t c, u_int8_t a)
{
 struct creator_softc *sc;
 const uint16_t *p;
 int row;
 int col;
 int i;

 sc = (struct creator_softc *)adp;
 row = (off / adp->va_info.vi_width) * adp->va_info.vi_cheight;
 col = (off % adp->va_info.vi_width) * adp->va_info.vi_cwidth;
 p = (const uint16_t *)sc->sc_font + (c * adp->va_info.vi_cheight);
 creator_ras_setfg(sc, creator_cmap[a & 0xf]);
 creator_ras_setbg(sc, creator_cmap[(a >> 4) & 0xf]);
 creator_ras_fifo_wait(sc, 1 + adp->va_info.vi_cheight);
 FFB_WRITE(sc, FFB_FBC, FFB_FBC_FONTXY,
     ((row + sc->sc_ymargin) << 16) | (col + sc->sc_xmargin));
 creator_ras_setfontw(sc, adp->va_info.vi_cwidth);
 creator_ras_setfontinc(sc, 0x10000);
 for (i = 0; i < adp->va_info.vi_cheight; i++) {
  FFB_WRITE(sc, FFB_FBC, FFB_FBC_FONT, *p++ << 16);
 }
 return (0);
}

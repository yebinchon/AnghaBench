
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int va_buffer_size; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_long ;
struct machfb_softc {int sc_depth; int sc_flags; int sc_width; int sc_height; } ;
struct fbtype {int fb_depth; int fb_cmsize; int fb_size; int fb_width; int fb_height; int fb_type; } ;
struct fbcursor {int set; int enable; } ;
typedef scalar_t__ caddr_t ;


 int ENODEV ;


 int FBTYPE_PCIMISC ;
 int FB_CUR_SETCUR ;
 int MACHFB_CUREN ;
 int fb_commonioctl (TYPE_1__*,int,scalar_t__) ;
 int machfb_cursor_enable (struct machfb_softc*,int ) ;

__attribute__((used)) static int
machfb_ioctl(video_adapter_t *adp, u_long cmd, caddr_t data)
{
 struct machfb_softc *sc;
 struct fbcursor *fbc;
 struct fbtype *fb;

 sc = (struct machfb_softc *)adp;

 switch (cmd) {
 case 129:
  fb = (struct fbtype *)data;
  fb->fb_type = FBTYPE_PCIMISC;
  fb->fb_height = sc->sc_height;
  fb->fb_width = sc->sc_width;
  fb->fb_depth = sc->sc_depth;
  if (sc->sc_depth <= 1 || sc->sc_depth > 8)
   fb->fb_cmsize = 0;
  else
   fb->fb_cmsize = 1 << sc->sc_depth;
  fb->fb_size = adp->va_buffer_size;
  break;
 case 128:
  fbc = (struct fbcursor *)data;
  if (fbc->set & FB_CUR_SETCUR && fbc->enable == 0) {
   machfb_cursor_enable(sc, 0);
   sc->sc_flags &= ~MACHFB_CUREN;
  } else
   return (ENODEV);
  break;
 default:
  return (fb_commonioctl(adp, cmd, data));
 }

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int u_long ;
struct fbtype {int fb_size; int fb_cmsize; int fb_depth; int fb_width; int fb_height; int fb_type; } ;
struct fbcursor {int set; int enable; } ;
struct creator_softc {int sc_flags; int sc_width; int sc_height; } ;
typedef scalar_t__ caddr_t ;


 int CREATOR_CUREN ;
 int ENODEV ;


 int FBTYPE_CREATOR ;
 int FB_CUR_SETCUR ;
 int creator_cursor_enable (struct creator_softc*,int ) ;
 int fb_commonioctl (int *,int,scalar_t__) ;

__attribute__((used)) static int
creator_ioctl(video_adapter_t *adp, u_long cmd, caddr_t data)
{
 struct creator_softc *sc;
 struct fbcursor *fbc;
 struct fbtype *fb;

 sc = (struct creator_softc *)adp;
 switch (cmd) {
 case 129:
  fb = (struct fbtype *)data;
  fb->fb_type = FBTYPE_CREATOR;
  fb->fb_height = sc->sc_height;
  fb->fb_width = sc->sc_width;
  fb->fb_depth = fb->fb_cmsize = fb->fb_size = 0;
  break;
 case 128:
  fbc = (struct fbcursor *)data;
  if (fbc->set & FB_CUR_SETCUR && fbc->enable == 0) {
   creator_cursor_enable(sc, 0);
   sc->sc_flags &= ~CREATOR_CUREN;
  } else
   return (ENODEV);
  break;
  break;
 default:
  return (fb_commonioctl(adp, cmd, data));
 }
 return (0);
}

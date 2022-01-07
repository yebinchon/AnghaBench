
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int vi_width; int vi_height; } ;
typedef TYPE_2__ video_info_t ;
struct winsize {int ws_row; int ws_col; } ;
struct tty {int dummy; } ;
struct TYPE_14__ {int status; int mode; int xpixel; int ypixel; int ysize; int xsize; TYPE_1__* sc; scalar_t__ font_size; int * font; scalar_t__ yoff; scalar_t__ xoff; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_15__ {int va_name; } ;
struct TYPE_12__ {TYPE_3__* cur_scp; TYPE_4__* adp; } ;


 int ENODEV ;
 int GRAPHICS_MODE ;
 int MOUSE_HIDDEN ;
 int MOUSE_VISIBLE ;
 int PIXEL_MODE ;
 int UNKNOWN_MODE ;
 int sc_clean_up (TYPE_3__*) ;
 int sc_init_emulator (TYPE_3__*,int *) ;
 int sc_mouse_move (TYPE_3__*,int,int) ;
 int * sc_render_match (TYPE_3__*,int ,int) ;
 int set_mode (TYPE_3__*) ;
 int spltty () ;
 int splx (int) ;
 int tty_set_winsize (struct tty*,struct winsize*) ;
 scalar_t__ vidd_get_info (TYPE_4__*,int,TYPE_2__*) ;

int
sc_set_graphics_mode(scr_stat *scp, struct tty *tp, int mode)
{



    video_info_t info;
    struct winsize wsz;
    int error;
    int s;

    if (vidd_get_info(scp->sc->adp, mode, &info))
 return ENODEV;


    s = spltty();
    if ((error = sc_clean_up(scp))) {
 splx(s);
 return error;
    }

    if (sc_render_match(scp, scp->sc->adp->va_name, GRAPHICS_MODE) == ((void*)0)) {
 splx(s);
 return ENODEV;
    }


    scp->status |= (UNKNOWN_MODE | GRAPHICS_MODE | MOUSE_HIDDEN);
    scp->status &= ~(PIXEL_MODE | MOUSE_VISIBLE);
    scp->mode = mode;




    scp->xoff = 0;
    scp->yoff = 0;
    scp->xpixel = info.vi_width;
    scp->ypixel = info.vi_height;
    scp->font = ((void*)0);
    scp->font_size = 0;


    sc_mouse_move(scp, scp->xpixel / 2, scp->ypixel / 2);

    sc_init_emulator(scp, ((void*)0));
    splx(s);

    if (scp == scp->sc->cur_scp)
 set_mode(scp);

    scp->status &= ~UNKNOWN_MODE;

    if (tp == ((void*)0))
 return 0;
    wsz.ws_col = scp->xsize;
    wsz.ws_row = scp->ysize;
    tty_set_winsize(tp, &wsz);
    return 0;

}

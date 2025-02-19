
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int vi_cwidth; int vi_cheight; int vi_width; int vi_height; } ;
typedef TYPE_2__ video_info_t ;
typedef int u_char ;
struct winsize {int ws_col; int ws_row; } ;
struct tty {int dummy; } ;
struct TYPE_17__ {int ysize; int status; int mode; int xsize; int xpixel; int ypixel; int font_size; int font_width; TYPE_1__* sc; int * font; scalar_t__ yoff; scalar_t__ xoff; int * history; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_18__ {int va_name; } ;
struct TYPE_15__ {int fonts_loaded; TYPE_3__* cur_scp; TYPE_4__* adp; int * font_16; int * font_14; int * font_8; } ;


 int EINVAL ;
 int ENODEV ;
 int FALSE ;
 int FONT_14 ;
 int FONT_16 ;
 int FONT_8 ;
 int GRAPHICS_MODE ;
 int MOUSE_HIDDEN ;
 int MOUSE_VISIBLE ;
 int PIXEL_MODE ;
 int TRUE ;
 int UNKNOWN_MODE ;
 int sc_alloc_cut_buffer (TYPE_3__*,int ) ;
 int sc_alloc_history_buffer (TYPE_3__*,int ,int,int ) ;
 int sc_alloc_scr_buffer (TYPE_3__*,int ,int ) ;
 int sc_clean_up (TYPE_3__*) ;
 int sc_hist_save (TYPE_3__*) ;
 int sc_init_emulator (TYPE_3__*,int *) ;
 int * sc_render_match (TYPE_3__*,int ,int ) ;
 int set_mode (TYPE_3__*) ;
 int spltty () ;
 int splx (int) ;
 int tty_set_winsize (struct tty*,struct winsize*) ;
 scalar_t__ vidd_get_info (TYPE_4__*,int,TYPE_2__*) ;

int
sc_set_text_mode(scr_stat *scp, struct tty *tp, int mode, int xsize, int ysize,
   int fontsize, int fontwidth)
{
    video_info_t info;
    struct winsize wsz;
    u_char *font;
    int prev_ysize;
    int error;
    int s;

    if (vidd_get_info(scp->sc->adp, mode, &info))
 return ENODEV;


    if (fontwidth <= 0)
 fontwidth = info.vi_cwidth;
    if (fontsize <= 0)
 fontsize = info.vi_cheight;
    if (fontsize < 14)
 fontsize = 8;
    else if (fontsize >= 16)
 fontsize = 16;
    else
 fontsize = 14;

    switch (fontsize) {
    case 8:
 if ((scp->sc->fonts_loaded & FONT_8) == 0)
     return (EINVAL);
 font = scp->sc->font_8;
 break;
    case 14:
 if ((scp->sc->fonts_loaded & FONT_14) == 0)
     return (EINVAL);
 font = scp->sc->font_14;
 break;
    case 16:
 if ((scp->sc->fonts_loaded & FONT_16) == 0)
     return (EINVAL);
 font = scp->sc->font_16;
 break;
    }



    if ((xsize <= 0) || (xsize > info.vi_width))
 xsize = info.vi_width;
    if ((ysize <= 0) || (ysize > info.vi_height))
 ysize = info.vi_height;


    s = spltty();
    if ((error = sc_clean_up(scp))) {
 splx(s);
 return error;
    }

    if (sc_render_match(scp, scp->sc->adp->va_name, 0) == ((void*)0)) {
 splx(s);
 return ENODEV;
    }



    if (scp->history != ((void*)0))
 sc_hist_save(scp);

    prev_ysize = scp->ysize;




    scp->status |= UNKNOWN_MODE | MOUSE_HIDDEN;
    scp->status &= ~(GRAPHICS_MODE | PIXEL_MODE | MOUSE_VISIBLE);
    scp->mode = mode;
    scp->xsize = xsize;
    scp->ysize = ysize;
    scp->xoff = 0;
    scp->yoff = 0;
    scp->xpixel = scp->xsize*8;
    scp->ypixel = scp->ysize*fontsize;
    scp->font = font;
    scp->font_size = fontsize;
    scp->font_width = fontwidth;


    sc_alloc_scr_buffer(scp, TRUE, TRUE);
    sc_init_emulator(scp, ((void*)0));

    sc_alloc_cut_buffer(scp, FALSE);


    sc_alloc_history_buffer(scp, 0, prev_ysize, FALSE);

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


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {int vi_cheight; int vi_width; int vi_height; } ;
typedef TYPE_3__ video_info_t ;
typedef int u_char ;
struct winsize {int ws_col; int ws_row; } ;
struct tty {int dummy; } ;
struct TYPE_22__ {int ysize; int status; int xsize; int xoff; int xpixel; int yoff; int ypixel; int font_size; int font_width; int border; TYPE_2__* sc; int * font; int * history; int * ts; TYPE_1__* tsw; int mode; } ;
typedef TYPE_4__ scr_stat ;
struct TYPE_23__ {int va_name; } ;
struct TYPE_20__ {int fonts_loaded; TYPE_4__* cur_scp; TYPE_5__* adp; int * font_16; int * font_14; int * font_8; } ;
struct TYPE_19__ {int (* te_term ) (TYPE_4__*,int *) ;} ;


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
 int sc_alloc_cut_buffer (TYPE_4__*,int ) ;
 int sc_alloc_history_buffer (TYPE_4__*,int ,int,int ) ;
 int sc_alloc_scr_buffer (TYPE_4__*,int ,int ) ;
 int sc_clean_up (TYPE_4__*) ;
 int sc_hist_save (TYPE_4__*) ;
 int sc_init_emulator (TYPE_4__*,int *) ;
 int * sc_render_match (TYPE_4__*,int ,int) ;
 int sc_set_border (TYPE_4__*,int ) ;
 int sc_set_cursor_image (TYPE_4__*) ;
 int sc_support_pixel_mode (TYPE_3__*) ;
 int spltty () ;
 int splx (int) ;
 int stub1 (TYPE_4__*,int *) ;
 int tty_set_winsize (struct tty*,struct winsize*) ;
 scalar_t__ vidd_get_info (TYPE_5__*,int ,TYPE_3__*) ;

int
sc_set_pixel_mode(scr_stat *scp, struct tty *tp, int xsize, int ysize,
    int fontsize, int fontwidth)
{

    return ENODEV;
}

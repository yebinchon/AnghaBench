
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int vi_flags; int vi_width; int vi_height; int vi_cwidth; int vi_cheight; } ;
typedef TYPE_2__ video_info_t ;
struct TYPE_10__ {int mode; } ;
struct TYPE_12__ {int index; int status; int xpixel; int ypixel; int xsize; int ysize; int font_size; int font_width; int start; int border; int mouse_cut_start; int mouse_cut_end; scalar_t__ history_size; scalar_t__ history_pos; int * history; TYPE_1__ smode; int * proc; scalar_t__ pid; int bell_duration; int bell_pitch; int kbd_mode; int * mouse_proc; scalar_t__ mouse_pid; scalar_t__ mouse_signal; int dflt_curs_attr; int base_curs_attr; int * rndr; int * ts; int * tsw; scalar_t__ end; scalar_t__ ypos; scalar_t__ xpos; scalar_t__ yoff; scalar_t__ xoff; int scr; int vtb; int * font; int mode; TYPE_4__* sc; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_13__ {int curs_attr; int * font_14; int * font_16; int * font_8; int adp; int initial_mode; } ;
typedef TYPE_4__ sc_softc_t ;
struct TYPE_14__ {int shift_state; int bell_pitch; } ;


 int BELL_DURATION ;
 int CURSOR_ENABLED ;
 int FALSE ;
 int GRAPHICS_MODE ;
 int K_XLATE ;
 int MOUSE_HIDDEN ;
 int NLKED ;
 int SC_NORM_ATTR ;
 int VTB_FRAMEBUFFER ;
 int VTB_MEMORY ;
 int VT_AUTO ;
 int V_INFO_GRAPHICS ;
 TYPE_9__ bios_value ;
 int bzero (TYPE_3__*,int) ;
 int sc_vtb_init (int *,int ,int ,int ,int *,int ) ;
 int vidd_get_info (int ,int ,TYPE_2__*) ;

__attribute__((used)) static void
init_scp(sc_softc_t *sc, int vty, scr_stat *scp)
{
    video_info_t info;

    bzero(scp, sizeof(*scp));

    scp->index = vty;
    scp->sc = sc;
    scp->status = 0;
    scp->mode = sc->initial_mode;
    vidd_get_info(sc->adp, scp->mode, &info);
    if (info.vi_flags & V_INFO_GRAPHICS) {
 scp->status |= GRAPHICS_MODE;
 scp->xpixel = info.vi_width;
 scp->ypixel = info.vi_height;
 scp->xsize = info.vi_width/info.vi_cwidth;
 scp->ysize = info.vi_height/info.vi_cheight;
 scp->font_size = 0;
 scp->font = ((void*)0);
    } else {
 scp->xsize = info.vi_width;
 scp->ysize = info.vi_height;
 scp->xpixel = scp->xsize*info.vi_cwidth;
 scp->ypixel = scp->ysize*info.vi_cheight;
    }

    scp->font_size = info.vi_cheight;
    scp->font_width = info.vi_cwidth;

    if (info.vi_cheight < 14)
 scp->font = sc->font_8;
    else if (info.vi_cheight >= 16)
 scp->font = sc->font_16;
    else
 scp->font = sc->font_14;




    sc_vtb_init(&scp->vtb, VTB_MEMORY, 0, 0, ((void*)0), FALSE);

    sc_vtb_init(&scp->scr, VTB_FRAMEBUFFER, 0, 0, ((void*)0), FALSE);

    scp->xoff = scp->yoff = 0;
    scp->xpos = scp->ypos = 0;
    scp->start = scp->xsize * scp->ysize - 1;
    scp->end = 0;
    scp->tsw = ((void*)0);
    scp->ts = ((void*)0);
    scp->rndr = ((void*)0);
    scp->border = (SC_NORM_ATTR >> 4) & 0x0f;
    scp->base_curs_attr = scp->dflt_curs_attr = sc->curs_attr;
    scp->mouse_cut_start = scp->xsize*scp->ysize;
    scp->mouse_cut_end = -1;
    scp->mouse_signal = 0;
    scp->mouse_pid = 0;
    scp->mouse_proc = ((void*)0);
    scp->kbd_mode = K_XLATE;
    scp->bell_pitch = bios_value.bell_pitch;
    scp->bell_duration = BELL_DURATION;
    scp->status |= (bios_value.shift_state & NLKED);
    scp->status |= CURSOR_ENABLED | MOUSE_HIDDEN;
    scp->pid = 0;
    scp->proc = ((void*)0);
    scp->smode.mode = VT_AUTO;
    scp->history = ((void*)0);
    scp->history_pos = 0;
    scp->history_size = 0;
}

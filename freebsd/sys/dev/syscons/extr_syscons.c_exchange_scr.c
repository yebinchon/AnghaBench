
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ kbd_mode; scalar_t__ mode; int status; int border; int ypos; int xpos; int ysize; int xsize; int scr; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_18__ {scalar_t__ kbd_open_level; int kbd; TYPE_2__* old_scp; int palette; TYPE_4__* adp; int palette2; TYPE_2__* new_scp; TYPE_2__* cur_scp; } ;
typedef TYPE_3__ sc_softc_t ;
typedef int caddr_t ;
struct TYPE_16__ {scalar_t__ vi_mem_model; } ;
struct TYPE_19__ {TYPE_1__ va_info; scalar_t__ va_window; } ;


 int FALSE ;
 scalar_t__ ISGRAPHSC (TYPE_2__*) ;
 scalar_t__ ISUNKNOWNSC (TYPE_2__*) ;
 int KDSKBMODE ;
 scalar_t__ K_XLATE ;
 int LOCK_MASK ;
 int MOUSE_HIDDEN ;
 int VTB_FRAMEBUFFER ;
 scalar_t__ V_INFO_MM_DIRECT ;
 int kbdd_ioctl (int ,int ,int ) ;
 int mark_all (TYPE_2__*) ;
 int save_kbd_state (TYPE_2__*) ;
 int sc_move_cursor (TYPE_2__*,int ,int ) ;
 int sc_remove_cursor_image (TYPE_2__*) ;
 int sc_set_border (TYPE_2__*,int ) ;
 int sc_set_cursor_image (TYPE_2__*) ;
 int sc_vtb_init (int *,int ,int ,int ,void*,int ) ;
 int set_mode (TYPE_2__*) ;
 int update_kbd_state (TYPE_2__*,int ,int ) ;
 int vidd_load_palette (TYPE_4__*,int ) ;

__attribute__((used)) static void
exchange_scr(sc_softc_t *sc)
{
    scr_stat *scp;


    sc_move_cursor(sc->old_scp, sc->old_scp->xpos, sc->old_scp->ypos);
    if (!ISGRAPHSC(sc->old_scp))
 sc_remove_cursor_image(sc->old_scp);
    if (sc->old_scp->kbd_mode == K_XLATE)
 save_kbd_state(sc->old_scp);


    scp = sc->cur_scp = sc->new_scp;
    if (sc->old_scp->mode != scp->mode || ISUNKNOWNSC(sc->old_scp))
 set_mode(scp);

    else
 sc_vtb_init(&scp->scr, VTB_FRAMEBUFFER, scp->xsize, scp->ysize,
      (void *)sc->adp->va_window, FALSE);

    scp->status |= MOUSE_HIDDEN;
    sc_move_cursor(scp, scp->xpos, scp->ypos);
    if (!ISGRAPHSC(scp))
 sc_set_cursor_image(scp);

    if (ISGRAPHSC(sc->old_scp)) {





 vidd_load_palette(sc->adp, sc->palette);
    }

    sc_set_border(scp, scp->border);


    if (sc->kbd_open_level == 0 && sc->old_scp->kbd_mode != scp->kbd_mode)
 (void)kbdd_ioctl(sc->kbd, KDSKBMODE, (caddr_t)&scp->kbd_mode);
    update_kbd_state(scp, scp->status, LOCK_MASK);

    mark_all(scp);
}

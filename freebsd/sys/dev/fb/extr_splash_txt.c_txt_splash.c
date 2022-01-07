
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int vi_flags; } ;
struct TYPE_13__ {size_t va_index; TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
struct TYPE_14__ {int scr; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_15__ {int * scr_map; TYPE_3__* cur_scp; } ;
typedef TYPE_4__ sc_softc_t ;
struct TYPE_16__ {int (* set_hw_cursor ) (TYPE_2__*,int,int) ;} ;


 int BG_BLACK ;
 int EAGAIN ;
 scalar_t__ FALSE ;
 int FG_LIGHTGREY ;
 scalar_t__ TRUE ;
 int V_INFO_GRAPHICS ;
 int draw_text_splash (TYPE_4__*) ;
 TYPE_4__* sc_find_softc (TYPE_2__*,int *) ;
 int sc_set_border (TYPE_3__*,int ) ;
 int sc_vtb_clear (int *,int ,int) ;
 scalar_t__ splash_on ;
 int stub1 (TYPE_2__*,int,int) ;
 TYPE_5__** vidsw ;

__attribute__((used)) static int
txt_splash(video_adapter_t *adp, const int on)
{
 sc_softc_t *sc;
 scr_stat *scp;

 sc = sc_find_softc(adp, ((void*)0));
 if (sc == ((void*)0))
  return (EAGAIN);
 scp = sc->cur_scp;
 if (on) {
  if (!splash_on) {
   if (adp->va_info.vi_flags & V_INFO_GRAPHICS)
    return EAGAIN;

   sc_vtb_clear(&scp->scr, sc->scr_map[0x20],
       (FG_LIGHTGREY | BG_BLACK) << 8);
   (*vidsw[adp->va_index]->set_hw_cursor)(adp, -1, -1);
   sc_set_border(scp, 0);
   splash_on = TRUE;

   draw_text_splash(sc);
  }
  return (0);
 } else {

  splash_on = FALSE;
  return (0);
 }
}

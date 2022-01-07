
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int font_size; int cursor_base; int cursor_height; TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_4__ {int adp; } ;


 int vidd_set_hw_cursor_shape (int ,int,int,int,int) ;

__attribute__((used)) static void
gfb_cursor_shape(scr_stat *scp, int base, int height, int blink)
{
 if (base < 0 || base >= scp->font_size)
  return;





 vidd_set_hw_cursor_shape(scp->sc->adp, base, height, scp->font_size,
     blink);
}

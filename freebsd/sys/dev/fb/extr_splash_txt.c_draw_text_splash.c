
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef size_t u_char ;
struct TYPE_6__ {int * scr_map; TYPE_1__* cur_scp; } ;
typedef TYPE_2__ sc_softc_t ;
struct TYPE_7__ {size_t* data; } ;
struct TYPE_5__ {scalar_t__ xsize; int scr; } ;


 scalar_t__ BIN_IMAGE_HEIGHT ;
 scalar_t__ BIN_IMAGE_WIDTH ;
 int sc_vtb_putc (int *,scalar_t__,int ,int) ;
 TYPE_3__ txt_decoder ;

__attribute__((used)) static void
draw_text_splash(sc_softc_t *sc)
{
 u_int x, y;
 u_char ch, attr;
 u_char *pdata = txt_decoder.data;


 if (txt_decoder.data == ((void*)0))
  return;
 for (y = 0; y < BIN_IMAGE_HEIGHT; y++) {
  for (x = 0; x < BIN_IMAGE_WIDTH; x++) {
   ch = *pdata++;
   attr = *pdata++;
   sc_vtb_putc(&sc->cur_scp->scr,
       (y * sc->cur_scp->xsize) + x,
       sc->scr_map[ch], (int)attr << 8);
  }
 }
}

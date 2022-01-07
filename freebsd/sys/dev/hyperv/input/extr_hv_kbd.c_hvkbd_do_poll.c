
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int hs_chan; } ;
typedef TYPE_1__ hv_kbd_sc ;


 int hv_kbd_prod_is_ready (TYPE_1__*) ;
 int hv_kbd_read_channel (int ,TYPE_1__*) ;

__attribute__((used)) static void
hvkbd_do_poll(hv_kbd_sc *sc, uint8_t wait)
{
 while (!hv_kbd_prod_is_ready(sc)) {
  hv_kbd_read_channel(sc->hs_chan, sc);
  if (!wait)
   break;
 }
}

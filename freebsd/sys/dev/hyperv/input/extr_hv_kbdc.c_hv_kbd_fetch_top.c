
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ks; } ;
typedef TYPE_1__ keystroke_info ;
typedef int keystroke ;
struct TYPE_7__ {int ks_mtx; int ks_queue; } ;
typedef TYPE_2__ hv_kbd_sc ;


 int DEBUG_HVSC (TYPE_2__*,char*) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 TYPE_1__* STAILQ_FIRST (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
hv_kbd_fetch_top(hv_kbd_sc *sc, keystroke *result)
{
 int ret = 0;
 keystroke_info *ksi = ((void*)0);
 mtx_lock(&sc->ks_mtx);
 if (STAILQ_EMPTY(&sc->ks_queue)) {
  DEBUG_HVSC(sc, "Empty queue!\n");
  ret = 1;
 } else {
  ksi = STAILQ_FIRST(&sc->ks_queue);
  *result = ksi->ks;
 }
 mtx_unlock(&sc->ks_mtx);
 return (ret);
}

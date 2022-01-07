
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int keystroke_info ;
struct TYPE_4__ {int ks_mtx; int ks_free_list; int ks_queue; } ;
typedef TYPE_1__ hv_kbd_sc ;


 int DEBUG_HVSC (TYPE_1__*,char*) ;
 int LIST_INSERT_HEAD (int *,int *,int ) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int * STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int link ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int slink ;

int
hv_kbd_remove_top(hv_kbd_sc *sc)
{
 int ret = 0;
 keystroke_info *ksi = ((void*)0);
 mtx_lock(&sc->ks_mtx);
 if (STAILQ_EMPTY(&sc->ks_queue)) {
  DEBUG_HVSC(sc, "Empty queue!\n");
  ret = 1;
 } else {
  ksi = STAILQ_FIRST(&sc->ks_queue);
  STAILQ_REMOVE_HEAD(&sc->ks_queue, slink);
  LIST_INSERT_HEAD(&sc->ks_free_list, ksi, link);
 }
 mtx_unlock(&sc->ks_mtx);
 return (ret);
}

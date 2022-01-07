
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ks; } ;
typedef TYPE_1__ keystroke_info ;
typedef int keystroke ;
struct TYPE_9__ {int ks_mtx; int ks_queue; int ks_free_list; } ;
typedef TYPE_2__ hv_kbd_sc ;


 int DEBUG_HVSC (TYPE_2__*,char*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 TYPE_1__* LIST_FIRST (int *) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int link ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int slink ;

int
hv_kbd_produce_ks(hv_kbd_sc *sc, const keystroke *ks)
{
 int ret = 0;
 keystroke_info *ksi;
 mtx_lock(&sc->ks_mtx);
 if (LIST_EMPTY(&sc->ks_free_list)) {
  DEBUG_HVSC(sc, "NO buffer!\n");
  ret = 1;
 } else {
  ksi = LIST_FIRST(&sc->ks_free_list);
  LIST_REMOVE(ksi, link);
  ksi->ks = *ks;
  STAILQ_INSERT_TAIL(&sc->ks_queue, ksi, slink);
 }
 mtx_unlock(&sc->ks_mtx);
 return (ret);
}

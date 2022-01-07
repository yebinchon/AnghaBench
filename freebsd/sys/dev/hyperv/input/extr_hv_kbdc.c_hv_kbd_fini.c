
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int keystroke_info ;
struct TYPE_3__ {int ks_mtx; int ks_queue; int ks_free_list; } ;
typedef TYPE_1__ hv_kbd_sc ;


 int LIST_EMPTY (int *) ;
 int * LIST_FIRST (int *) ;
 int LIST_REMOVE (int *,int ) ;
 int M_DEVBUF ;
 int STAILQ_EMPTY (int *) ;
 int * STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int free (int *,int ) ;
 int link ;
 int mtx_destroy (int *) ;
 int slink ;

__attribute__((used)) static void
hv_kbd_fini(hv_kbd_sc *sc)
{
 keystroke_info *ksi;
 while (!LIST_EMPTY(&sc->ks_free_list)) {
  ksi = LIST_FIRST(&sc->ks_free_list);
  LIST_REMOVE(ksi, link);
  free(ksi, M_DEVBUF);
 }
 while (!STAILQ_EMPTY(&sc->ks_queue)) {
  ksi = STAILQ_FIRST(&sc->ks_queue);
  STAILQ_REMOVE_HEAD(&sc->ks_queue, slink);
  free(ksi, M_DEVBUF);
 }
 mtx_destroy(&sc->ks_mtx);
}

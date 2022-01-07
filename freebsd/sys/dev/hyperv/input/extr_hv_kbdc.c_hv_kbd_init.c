
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int keystroke_info ;
struct TYPE_3__ {int ks_free_list; int ks_queue; int ks_mtx; } ;
typedef TYPE_1__ hv_kbd_sc ;


 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,int *,int ) ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int link ;
 int * malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
hv_kbd_init(hv_kbd_sc *sc)
{
 const int max_list = 16;
 int i;
 keystroke_info *ksi;

 mtx_init(&sc->ks_mtx, "hv_kbdc mutex", ((void*)0), MTX_DEF);
 LIST_INIT(&sc->ks_free_list);
 STAILQ_INIT(&sc->ks_queue);
 for (i = 0; i < max_list; i++) {
  ksi = malloc(sizeof(keystroke_info),
      M_DEVBUF, M_WAITOK|M_ZERO);
  LIST_INSERT_HEAD(&sc->ks_free_list, ksi, link);
 }
}

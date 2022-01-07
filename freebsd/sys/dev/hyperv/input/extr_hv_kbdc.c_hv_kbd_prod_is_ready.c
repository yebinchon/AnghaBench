
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks_mtx; int ks_queue; } ;
typedef TYPE_1__ hv_kbd_sc ;


 int STAILQ_EMPTY (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
hv_kbd_prod_is_ready(hv_kbd_sc *sc)
{
 int ret;
 mtx_lock(&sc->ks_mtx);
 ret = !STAILQ_EMPTY(&sc->ks_queue);
 mtx_unlock(&sc->ks_mtx);
 return (ret);
}

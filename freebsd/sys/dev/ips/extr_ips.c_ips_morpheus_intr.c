
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue_mtx; } ;
typedef TYPE_1__ ips_softc_t ;


 int ips_morpheus_check_intr (TYPE_1__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void ips_morpheus_intr(void *void_sc)
{
 ips_softc_t *sc = void_sc;

 mtx_lock(&sc->queue_mtx);
 ips_morpheus_check_intr(sc);
 mtx_unlock(&sc->queue_mtx);
}

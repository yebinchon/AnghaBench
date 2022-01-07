
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int q_lock; int ** q_tail; int ** q_head; } ;


 int TWS_MAX_QS ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
tws_init_qs(struct tws_softc *sc)
{

    mtx_lock(&sc->q_lock);
    for(int i=0;i<TWS_MAX_QS;i++) {
        sc->q_head[i] = ((void*)0);
        sc->q_tail[i] = ((void*)0);
    }
    mtx_unlock(&sc->q_lock);

}

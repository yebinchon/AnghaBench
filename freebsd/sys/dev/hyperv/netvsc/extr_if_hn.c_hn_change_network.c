
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_netchg_init; int * hn_mgmt_taskq; } ;


 int taskqueue_enqueue (int *,int *) ;

__attribute__((used)) static void
hn_change_network(struct hn_softc *sc)
{

 if (sc->hn_mgmt_taskq != ((void*)0))
  taskqueue_enqueue(sc->hn_mgmt_taskq, &sc->hn_netchg_init);
}

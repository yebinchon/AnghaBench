
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_map_sync_task; int mfi_io_lock; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
mfi_queue_map_sync(struct mfi_softc *sc)
{
 mtx_assert(&sc->mfi_io_lock, MA_OWNED);
 taskqueue_enqueue(taskqueue_swi, &sc->mfi_map_sync_task);
}

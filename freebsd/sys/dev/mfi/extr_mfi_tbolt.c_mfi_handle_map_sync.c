
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_io_lock; } ;


 int mfi_tbolt_sync_map_info (struct mfi_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
mfi_handle_map_sync(void *context, int pending)
{
 struct mfi_softc *sc;

 sc = context;
 mtx_lock(&sc->mfi_io_lock);
 mfi_tbolt_sync_map_info(sc);
 mtx_unlock(&sc->mfi_io_lock);
}

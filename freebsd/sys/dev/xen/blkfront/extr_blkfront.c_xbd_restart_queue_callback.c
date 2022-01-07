
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xbd_io_lock; } ;


 int XBDF_GNT_SHORTAGE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xbd_startio (struct xbd_softc*) ;
 int xbd_thaw (struct xbd_softc*,int ) ;

__attribute__((used)) static void
xbd_restart_queue_callback(void *arg)
{
 struct xbd_softc *sc = arg;

 mtx_lock(&sc->xbd_io_lock);

 xbd_thaw(sc, XBDF_GNT_SHORTAGE);

 xbd_startio(sc);

 mtx_unlock(&sc->xbd_io_lock);
}

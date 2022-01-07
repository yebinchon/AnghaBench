
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsi_softc {int io_lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vscsi_check_response_queue (struct vscsi_softc*) ;

__attribute__((used)) static void
vscsi_intr(void *xsc)
{
 struct vscsi_softc *sc = xsc;

 mtx_lock(&sc->io_lock);
 vscsi_check_response_queue(sc);
 mtx_unlock(&sc->io_lock);
}

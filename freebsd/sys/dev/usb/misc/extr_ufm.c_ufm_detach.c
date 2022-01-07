
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufm_softc {int sc_mtx; int sc_fifo; } ;
typedef int device_t ;


 struct ufm_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int usb_fifo_detach (int *) ;

__attribute__((used)) static int
ufm_detach(device_t dev)
{
 struct ufm_softc *sc = device_get_softc(dev);

 usb_fifo_detach(&sc->sc_fifo);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}

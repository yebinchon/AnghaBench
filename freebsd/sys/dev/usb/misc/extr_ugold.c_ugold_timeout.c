
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ugold_softc {int sc_callout; int sc_udev; int * sc_readout_msg; } ;


 int callout_reset (int *,int,void (*) (void*),struct ugold_softc*) ;
 int hz ;
 int usb_proc_explore_lock (int ) ;
 int usb_proc_explore_msignal (int ,int *,int *) ;
 int usb_proc_explore_unlock (int ) ;

__attribute__((used)) static void
ugold_timeout(void *arg)
{
 struct ugold_softc *sc = arg;

 usb_proc_explore_lock(sc->sc_udev);
 (void)usb_proc_explore_msignal(sc->sc_udev,
     &sc->sc_readout_msg[0], &sc->sc_readout_msg[1]);
 usb_proc_explore_unlock(sc->sc_udev);

 callout_reset(&sc->sc_callout, 6 * hz, &ugold_timeout, sc);
}

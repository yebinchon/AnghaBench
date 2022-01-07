
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int config; int state; } ;
typedef int device_t ;


 int LOG_DEBUG ;
 int LOG_NOTICE ;
 int PSM_ASLP ;
 int PSM_CONFIG_HOOKRESUME ;
 int PSM_CONFIG_INITAFTERSUSPEND ;
 int PSM_VALID ;
 int VLOG (int,int ) ;
 struct psm_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int reinitialize (struct psm_softc*,int) ;
 int wakeup (struct psm_softc*) ;

__attribute__((used)) static int
psmresume(device_t dev)
{
 struct psm_softc *sc = device_get_softc(dev);
 int unit = device_get_unit(dev);
 int err;

 VLOG(2, (LOG_NOTICE, "psm%d: system resume hook called.\n", unit));

 if ((sc->config &
     (PSM_CONFIG_HOOKRESUME | PSM_CONFIG_INITAFTERSUSPEND)) == 0)
  return (0);

 err = reinitialize(sc, sc->config & PSM_CONFIG_INITAFTERSUSPEND);

 if ((sc->state & PSM_ASLP) && !(sc->state & PSM_VALID)) {




  sc->state &= ~PSM_ASLP;
  wakeup(sc);
 }

 VLOG(2, (LOG_DEBUG, "psm%d: system resume hook exiting.\n", unit));

 return (err);
}

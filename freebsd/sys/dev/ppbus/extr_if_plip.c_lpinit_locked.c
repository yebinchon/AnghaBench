
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp_data {int * sc_ifbuf; TYPE_1__* sc_ifp; int sc_dev; } ;
struct ifnet {int if_drv_flags; struct lp_data* if_softc; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ if_mtu; } ;


 int ENOBUFS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IRQENABLE ;
 scalar_t__ MLPIPHDRLEN ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PPB_COMPATIBLE ;
 int PPB_DONTWAIT ;
 int device_get_parent (int ) ;
 scalar_t__ lpinittables () ;
 int * malloc (scalar_t__,int ,int ) ;
 int ppb_assert_locked (int ) ;
 int ppb_release_bus (int ,int ) ;
 int ppb_request_bus (int ,int ,int ) ;
 int ppb_set_mode (int ,int ) ;
 int ppb_wctr (int ,int ) ;

__attribute__((used)) static int
lpinit_locked(struct ifnet *ifp)
{
 struct lp_data *sc = ifp->if_softc;
 device_t dev = sc->sc_dev;
 device_t ppbus = device_get_parent(dev);
 int error;

 ppb_assert_locked(ppbus);
 error = ppb_request_bus(ppbus, dev, PPB_DONTWAIT);
 if (error)
  return (error);


 ppb_set_mode(ppbus, PPB_COMPATIBLE);

 if (lpinittables()) {
  ppb_release_bus(ppbus, dev);
  return (ENOBUFS);
 }

 sc->sc_ifbuf = malloc(sc->sc_ifp->if_mtu + MLPIPHDRLEN,
     M_DEVBUF, M_NOWAIT);
 if (sc->sc_ifbuf == ((void*)0)) {
  ppb_release_bus(ppbus, dev);
  return (ENOBUFS);
 }

 ppb_wctr(ppbus, IRQENABLE);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 return (0);
}

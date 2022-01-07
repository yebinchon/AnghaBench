
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp_data {int sc_dev; int * sc_ifbuf; TYPE_1__* sc_ifp; } ;
typedef int device_t ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int M_DEVBUF ;
 int device_get_parent (int ) ;
 int free (int *,int ) ;
 int ppb_assert_locked (int ) ;
 int ppb_release_bus (int ,int ) ;
 int ppb_wctr (int ,int) ;

__attribute__((used)) static void
lpstop(struct lp_data *sc)
{
 device_t ppbus = device_get_parent(sc->sc_dev);

 ppb_assert_locked(ppbus);
 ppb_wctr(ppbus, 0x00);
 sc->sc_ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 free(sc->sc_ifbuf, M_DEVBUF);
 sc->sc_ifbuf = ((void*)0);


 ppb_release_bus(ppbus, sc->sc_dev);
}

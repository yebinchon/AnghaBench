
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_softc {int * xfer; int mtx; } ;
struct evdev_dev {int dummy; } ;


 int MA_OWNED ;
 size_t WMT_INTR_DT ;
 int mtx_assert (int *,int ) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
wmt_ev_open_11(struct evdev_dev *evdev, void *ev_softc)
{
 struct wmt_softc *sc = ev_softc;

 mtx_assert(&sc->mtx, MA_OWNED);
 usbd_transfer_start(sc->xfer[WMT_INTR_DT]);

 return (0);
}

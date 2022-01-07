
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbusb_softc {int xbs_flags; int xbs_lock; int xbs_attach_ch; } ;
typedef int device_t ;


 int XBS_ATTACH_CH_ACTIVE ;
 int config_intrhook_disestablish (int *) ;
 struct xenbusb_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xenbusb_attach (int ,char*,int) ;

__attribute__((used)) static int
xenbusb_back_attach(device_t dev)
{
 struct xenbusb_softc *xbs;
 int error;

 xbs = device_get_softc(dev);
 error = xenbusb_attach(dev, "backend", 2);






 mtx_lock(&xbs->xbs_lock);
 if ((xbs->xbs_flags & XBS_ATTACH_CH_ACTIVE) != 0) {
  xbs->xbs_flags &= ~XBS_ATTACH_CH_ACTIVE;
  mtx_unlock(&xbs->xbs_lock);
  config_intrhook_disestablish(&xbs->xbs_attach_ch);
 } else {
  mtx_unlock(&xbs->xbs_lock);
 }

 return (error);
}

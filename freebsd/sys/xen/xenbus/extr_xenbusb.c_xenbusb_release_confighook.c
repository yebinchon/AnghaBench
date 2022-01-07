
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbusb_softc {scalar_t__ xbs_connecting_children; int xbs_flags; int xbs_lock; int xbs_attach_ch; } ;


 int KASSERT (int,char*) ;
 int XBS_ATTACH_CH_ACTIVE ;
 int config_intrhook_disestablish (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
xenbusb_release_confighook(struct xenbusb_softc *xbs)
{
 mtx_lock(&xbs->xbs_lock);
 KASSERT(xbs->xbs_connecting_children > 0,
  ("Connecting device count error\n"));
 xbs->xbs_connecting_children--;
 if (xbs->xbs_connecting_children == 0
  && (xbs->xbs_flags & XBS_ATTACH_CH_ACTIVE) != 0) {
  xbs->xbs_flags &= ~XBS_ATTACH_CH_ACTIVE;
  mtx_unlock(&xbs->xbs_lock);
  config_intrhook_disestablish(&xbs->xbs_attach_ch);
 } else {
  mtx_unlock(&xbs->xbs_lock);
 }
}

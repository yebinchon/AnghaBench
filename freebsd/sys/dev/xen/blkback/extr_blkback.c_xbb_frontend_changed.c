
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_softc {int dev; int lock; } ;
typedef int device_t ;
typedef int XenbusState ;


 int DPRINTF (char*,int ,int ) ;
 int EINVAL ;





 struct xbb_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xbb_connect (struct xbb_softc*) ;
 int xbb_shutdown (struct xbb_softc*) ;
 int xenbus_dev_fatal (int ,int ,char*,int) ;
 int xenbus_get_state (int ) ;
 int xenbus_set_state (int ,int const) ;
 int xenbus_strstate (int) ;

__attribute__((used)) static void
xbb_frontend_changed(device_t dev, XenbusState frontend_state)
{
 struct xbb_softc *xbb = device_get_softc(dev);

 DPRINTF("frontend_state=%s, xbb_state=%s\n",
         xenbus_strstate(frontend_state),
  xenbus_strstate(xenbus_get_state(xbb->dev)));

 switch (frontend_state) {
 case 128:
  break;
 case 129:
 case 130:
  xbb_connect(xbb);
  break;
 case 131:
 case 132:
  mtx_lock(&xbb->lock);
  xbb_shutdown(xbb);
  mtx_unlock(&xbb->lock);
  if (frontend_state == 132)
   xenbus_set_state(xbb->dev, 132);
  break;
 default:
  xenbus_dev_fatal(xbb->dev, EINVAL, "saw state %d at frontend",
     frontend_state);
  break;
 }
}

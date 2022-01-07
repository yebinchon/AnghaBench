
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfront_info {int xn_reset; int xbdev; TYPE_1__* xn_ifp; } ;
typedef int device_t ;
typedef int XenbusState ;
struct TYPE_2__ {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int DPRINTK (char*,int) ;
 struct netfront_info* device_get_softc (int ) ;
 int netfront_send_fake_arp (int ,struct netfront_info*) ;
 int netif_disconnect_backend (struct netfront_info*) ;
 int const xenbus_get_state (int ) ;
 int xenbus_set_state (int ,int const) ;
 int xn_connect (struct netfront_info*) ;
 int xn_kick_rings (struct netfront_info*) ;

__attribute__((used)) static void
netfront_backend_changed(device_t dev, XenbusState newstate)
{
 struct netfront_info *sc = device_get_softc(dev);

 DPRINTK("newstate=%d\n", newstate);

 CURVNET_SET(sc->xn_ifp->if_vnet);

 switch (newstate) {
 case 131:
 case 132:
 case 128:
 case 130:
 case 129:
  break;
 case 133:
  if (xenbus_get_state(dev) != 131)
   break;
  if (xn_connect(sc) != 0)
   break;

  xenbus_set_state(sc->xbdev, 134);
  xn_kick_rings(sc);
  break;
 case 135:
  xenbus_set_state(dev, 136);
  break;
 case 136:
  if (sc->xn_reset) {
   netif_disconnect_backend(sc);
   xenbus_set_state(dev, 131);
   sc->xn_reset = 0;
  }
  break;
 case 134:



  break;
 }

 CURVNET_RESTORE();
}

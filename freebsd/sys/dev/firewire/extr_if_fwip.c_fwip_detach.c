
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_capenable; } ;
struct TYPE_2__ {struct ifnet* fwip_ifp; } ;
struct fwip_softc {int mtx; TYPE_1__ fw_softc; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 scalar_t__ device_get_softc (int ) ;
 int ether_poll_deregister (struct ifnet*) ;
 int firewire_ifdetach (struct ifnet*) ;
 int fwip_stop (struct fwip_softc*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int splimp () ;
 int splx (int) ;

__attribute__((used)) static int
fwip_detach(device_t dev)
{
 struct fwip_softc *fwip;
 struct ifnet *ifp;
 int s;

 fwip = (struct fwip_softc *)device_get_softc(dev);
 ifp = fwip->fw_softc.fwip_ifp;






 s = splimp();

 fwip_stop(fwip);
 firewire_ifdetach(ifp);
 if_free(ifp);
 mtx_destroy(&fwip->mtx);

 splx(s);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_capenable; } ;
struct TYPE_2__ {struct ifnet* ifp; } ;
struct fwe_softc {int mtx; TYPE_1__ eth_softc; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 struct fwe_softc* device_get_softc (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int fwe_stop (struct fwe_softc*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int splimp () ;
 int splx (int) ;

__attribute__((used)) static int
fwe_detach(device_t dev)
{
 struct fwe_softc *fwe;
 struct ifnet *ifp;
 int s;

 fwe = device_get_softc(dev);
 ifp = fwe->eth_softc.ifp;





 s = splimp();

 fwe_stop(fwe);
 ether_ifdetach(ifp);
 if_free(ifp);

 splx(s);
 mtx_destroy(&fwe->mtx);
 return 0;
}

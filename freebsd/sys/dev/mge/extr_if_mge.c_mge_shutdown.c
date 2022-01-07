
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mge_softc {TYPE_1__* ifp; } ;
typedef int device_t ;
struct TYPE_2__ {int if_capenable; } ;


 int IFCAP_POLLING ;
 int MGE_GLOBAL_LOCK (struct mge_softc*) ;
 int MGE_GLOBAL_UNLOCK (struct mge_softc*) ;
 struct mge_softc* device_get_softc (int ) ;
 int ether_poll_deregister (TYPE_1__*) ;
 int mge_stop (struct mge_softc*) ;

__attribute__((used)) static int
mge_shutdown(device_t dev)
{
 struct mge_softc *sc = device_get_softc(dev);

 MGE_GLOBAL_LOCK(sc);






 mge_stop(sc);

 MGE_GLOBAL_UNLOCK(sc);

 return (0);
}

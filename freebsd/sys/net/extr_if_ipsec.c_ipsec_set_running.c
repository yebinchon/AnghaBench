
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sin6_addr; } ;
struct TYPE_7__ {int sin_addr; } ;
struct TYPE_8__ {TYPE_1__ sin6; TYPE_3__ sin; } ;
struct secasindex {TYPE_4__ src; } ;
struct ipsec_softc {int family; TYPE_2__* ifp; } ;
struct TYPE_6__ {int if_drv_flags; } ;




 int IFF_DRV_RUNNING ;
 int IPSEC_DIR_OUTBOUND ;
 int in6_localip (int *) ;
 int in_localip (int ) ;
 struct secasindex* ipsec_getsaidx (struct ipsec_softc*,int ,int) ;

__attribute__((used)) static void
ipsec_set_running(struct ipsec_softc *sc)
{
 struct secasindex *saidx;
 int localip;

 saidx = ipsec_getsaidx(sc, IPSEC_DIR_OUTBOUND, sc->family);
 localip = 0;
 switch (sc->family) {
 }
 if (localip != 0)
  sc->ifp->if_drv_flags |= IFF_DRV_RUNNING;
 else
  sc->ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int if_flags; } ;
struct TYPE_3__ {int an_len; int an_type; } ;
struct an_softc {TYPE_1__ areq; int * an_temp_keys; scalar_t__ mpi350; scalar_t__ an_gone; struct ifnet* an_ifp; } ;
struct an_ltv_key {int dummy; } ;
typedef int device_t ;


 int AN_LOCK (struct an_softc*) ;
 int AN_RID_WEP_TEMP ;
 int AN_UNLOCK (struct an_softc*) ;
 int IFF_UP ;
 int an_init_locked (struct an_softc*) ;
 int an_init_mpi350_desc (struct an_softc*) ;
 int an_reset (struct an_softc*) ;
 int an_setdef (struct an_softc*,TYPE_1__*) ;
 int an_start_locked (struct ifnet*) ;
 int bcopy (int *,TYPE_1__*,int) ;
 struct an_softc* device_get_softc (int ) ;

void
an_resume(device_t dev)
{
 struct an_softc *sc;
 struct ifnet *ifp;
 int i;

 sc = device_get_softc(dev);
 AN_LOCK(sc);
 ifp = sc->an_ifp;

 sc->an_gone = 0;
 an_reset(sc);
 if (sc->mpi350)
  an_init_mpi350_desc(sc);
 an_init_locked(sc);


 for (i = 0; i < 4; i++) {
  sc->areq.an_type = AN_RID_WEP_TEMP;
  sc->areq.an_len = sizeof(struct an_ltv_key);
  bcopy(&sc->an_temp_keys[i],
      &sc->areq, sizeof(struct an_ltv_key));
  an_setdef(sc, &sc->areq);
 }

 if (ifp->if_flags & IFF_UP)
  an_start_locked(ifp);
 AN_UNLOCK(sc);

 return;
}

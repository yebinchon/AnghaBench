
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * t_Handle ;
struct TYPE_5__ {unsigned int swPortalId; uintptr_t irq; int h_Bm; void* ciBaseAddress; void* ceBaseAddress; } ;
typedef TYPE_2__ t_BmPortalParam ;
struct dpaa_portals_softc {TYPE_1__* sc_dp; int * sc_rres; } ;
struct bman_softc {int sc_bh; } ;
struct TYPE_4__ {int dp_ph; scalar_t__ dp_ires; } ;


 int * BM_PORTAL_Config (TYPE_2__*) ;
 int BM_PORTAL_Free (int *) ;
 scalar_t__ BM_PORTAL_Init (int *) ;
 scalar_t__ E_OK ;
 unsigned int PCPU_GET (int ) ;
 int SW_VOL ;
 scalar_t__ atomic_cmpset_acq_ptr (uintptr_t*,int ,int) ;
 uintptr_t atomic_load_acq_ptr (uintptr_t*) ;
 int atomic_store_rel_ptr (uintptr_t*,uintptr_t) ;
 struct dpaa_portals_softc* bp_sc ;
 int cpuid ;
 int curthread ;
 int dpaa_portal_map_registers (struct dpaa_portals_softc*) ;
 int mi_switch (int ,int *) ;
 void* rman_get_bushandle (int ) ;
 int sched_pin () ;
 int sched_unpin () ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

t_Handle
bman_portal_setup(struct bman_softc *bsc)
{
 struct dpaa_portals_softc *sc;
 t_BmPortalParam bpp;
 t_Handle portal;
 unsigned int cpu;
 uintptr_t p;


 if (bp_sc == ((void*)0))
  return (((void*)0));

 sc = bp_sc;

 sched_pin();
 portal = ((void*)0);
 cpu = PCPU_GET(cpuid);


 while (atomic_cmpset_acq_ptr((uintptr_t *)&sc->sc_dp[cpu].dp_ph,
     0, -1) == 0) {
  p = atomic_load_acq_ptr((uintptr_t *)&sc->sc_dp[cpu].dp_ph);


  if (p != 0 && p != -1) {
   sched_unpin();
   return ((t_Handle)p);
  }


  thread_lock(curthread);
  mi_switch(SW_VOL, ((void*)0));
  thread_unlock(curthread);
 }


 dpaa_portal_map_registers(sc);


 bpp.ceBaseAddress = rman_get_bushandle(sc->sc_rres[0]);
 bpp.ciBaseAddress = rman_get_bushandle(sc->sc_rres[1]);
 bpp.h_Bm = bsc->sc_bh;
 bpp.swPortalId = cpu;
 bpp.irq = (uintptr_t)sc->sc_dp[cpu].dp_ires;

 portal = BM_PORTAL_Config(&bpp);
 if (portal == ((void*)0))
  goto err;

 if (BM_PORTAL_Init(portal) != E_OK)
  goto err;

 atomic_store_rel_ptr((uintptr_t *)&sc->sc_dp[cpu].dp_ph, (uintptr_t)portal);

 sched_unpin();

 return (portal);

err:
 if (portal != ((void*)0))
  BM_PORTAL_Free(portal);

 atomic_store_rel_ptr((uintptr_t *)&sc->sc_dp[cpu].dp_ph, 0);
 sched_unpin();

 return (((void*)0));
}

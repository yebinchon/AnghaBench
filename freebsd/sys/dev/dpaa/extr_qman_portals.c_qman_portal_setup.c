
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {unsigned int swPortalId; uintptr_t irq; struct qman_softc* h_App; int f_RejectedFrame; int f_DfltFrame; scalar_t__ fdLiodnOffset; int h_Qm; void* ciBaseAddress; void* ceBaseAddress; } ;
typedef TYPE_2__ t_QmPortalParam ;
typedef int * t_Handle ;
struct qman_softc {int sc_qh; } ;
struct dpaa_portals_softc {TYPE_1__* sc_dp; int * sc_rres; } ;
struct TYPE_4__ {int dp_ph; scalar_t__ dp_ires; } ;


 scalar_t__ E_OK ;
 unsigned int PCPU_GET (int ) ;
 int QMAN_COMMON_POOL_CHANNEL ;
 scalar_t__ QM_PORTAL_AddPoolChannel (int *,int ) ;
 int * QM_PORTAL_Config (TYPE_2__*) ;
 int QM_PORTAL_Free (int *) ;
 scalar_t__ QM_PORTAL_Init (int *) ;
 int SW_VOL ;
 scalar_t__ atomic_cmpset_acq_ptr (uintptr_t*,int ,int) ;
 uintptr_t atomic_load_acq_ptr (uintptr_t*) ;
 int atomic_store_rel_32 (int *,int ) ;
 int atomic_store_rel_ptr (uintptr_t*,uintptr_t) ;
 int cpuid ;
 int curthread ;
 int dpaa_portal_map_registers (struct dpaa_portals_softc*) ;
 int mi_switch (int ,int *) ;
 int qman_received_frame_callback ;
 int qman_rejected_frame_callback ;
 struct dpaa_portals_softc* qp_sc ;
 void* rman_get_bushandle (int ) ;
 int sched_pin () ;
 int sched_unpin () ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

t_Handle
qman_portal_setup(struct qman_softc *qsc)
{
 struct dpaa_portals_softc *sc;
 t_QmPortalParam qpp;
 unsigned int cpu;
 uintptr_t p;
 t_Handle portal;


 if (qp_sc == ((void*)0))
  return (((void*)0));

 sc = qp_sc;

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


 qpp.ceBaseAddress = rman_get_bushandle(sc->sc_rres[0]);
 qpp.ciBaseAddress = rman_get_bushandle(sc->sc_rres[1]);
 qpp.h_Qm = qsc->sc_qh;
 qpp.swPortalId = cpu;
 qpp.irq = (uintptr_t)sc->sc_dp[cpu].dp_ires;
 qpp.fdLiodnOffset = 0;
 qpp.f_DfltFrame = qman_received_frame_callback;
 qpp.f_RejectedFrame = qman_rejected_frame_callback;
 qpp.h_App = qsc;

 portal = QM_PORTAL_Config(&qpp);
 if (portal == ((void*)0))
  goto err;

 if (QM_PORTAL_Init(portal) != E_OK)
  goto err;

 if (QM_PORTAL_AddPoolChannel(portal, QMAN_COMMON_POOL_CHANNEL) != E_OK)
  goto err;

 atomic_store_rel_ptr((uintptr_t *)&sc->sc_dp[cpu].dp_ph,
     (uintptr_t)portal);
 sched_unpin();

 return (portal);

err:
 if (portal != ((void*)0))
  QM_PORTAL_Free(portal);

 atomic_store_rel_32((uint32_t *)&sc->sc_dp[cpu].dp_ph, 0);
 sched_unpin();

 return (((void*)0));
}

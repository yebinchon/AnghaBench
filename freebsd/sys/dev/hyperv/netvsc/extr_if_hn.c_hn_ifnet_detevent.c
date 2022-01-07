
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {size_t if_index; int if_xname; int * if_input; } ;
struct hn_softc {int hn_flags; int hn_xvf_flags; scalar_t__ hn_vf_rdytick; TYPE_1__* hn_ifp; int hn_saved_tsosegsz; int hn_saved_tsosegcnt; int hn_saved_tsomax; int hn_saved_caps; int * hn_vf_input; int hn_vf_init; int hn_vf_taskq; int * hn_vf_ifp; } ;
struct TYPE_2__ {int if_xname; int if_hw_tsomaxsegsize; int if_hw_tsomaxsegcount; int if_hw_tsomax; int if_capabilities; } ;


 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LOCK (struct hn_softc*) ;
 int HN_NVS_DATAPATH_SYNTH ;
 int HN_UNLOCK (struct hn_softc*) ;
 int HN_XVFFLAG_ENABLED ;
 int KASSERT (int,char*) ;
 int hn_ismyvf (struct hn_softc*,struct ifnet*) ;
 int hn_nvs_set_datapath (struct hn_softc*,int ) ;
 int hn_resume_mgmt (struct hn_softc*) ;
 int hn_vf_rss_restore (struct hn_softc*) ;
 TYPE_1__** hn_vfmap ;
 int hn_vfmap_lock ;
 size_t hn_vfmap_size ;
 scalar_t__ hn_xpnt_vf ;
 int hn_xpnt_vf_setdisable (struct hn_softc*,int) ;
 int rm_wlock (int *) ;
 int rm_wunlock (int *) ;
 int taskqueue_drain_timeout (int ,int *) ;

__attribute__((used)) static void
hn_ifnet_detevent(void *xsc, struct ifnet *ifp)
{
 struct hn_softc *sc = xsc;

 HN_LOCK(sc);

 if (sc->hn_vf_ifp == ((void*)0))
  goto done;

 if (!hn_ismyvf(sc, ifp))
  goto done;

 if (hn_xpnt_vf) {
  HN_UNLOCK(sc);
  taskqueue_drain_timeout(sc->hn_vf_taskq, &sc->hn_vf_init);
  HN_LOCK(sc);

  KASSERT(sc->hn_vf_input != ((void*)0), ("%s VF input is not saved",
      sc->hn_ifp->if_xname));
  ifp->if_input = sc->hn_vf_input;
  sc->hn_vf_input = ((void*)0);

  if ((sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) &&
      (sc->hn_xvf_flags & HN_XVFFLAG_ENABLED))
   hn_nvs_set_datapath(sc, HN_NVS_DATAPATH_SYNTH);

  if (sc->hn_vf_rdytick == 0) {



   sc->hn_ifp->if_capabilities = sc->hn_saved_caps;
   sc->hn_ifp->if_hw_tsomax = sc->hn_saved_tsomax;
   sc->hn_ifp->if_hw_tsomaxsegcount =
       sc->hn_saved_tsosegcnt;
   sc->hn_ifp->if_hw_tsomaxsegsize = sc->hn_saved_tsosegsz;
  }

  if (sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) {



   hn_vf_rss_restore(sc);





   hn_resume_mgmt(sc);
  }
 }


 hn_xpnt_vf_setdisable(sc, 1 );

 rm_wlock(&hn_vfmap_lock);

 KASSERT(ifp->if_index < hn_vfmap_size,
     ("ifindex %d, vfmapsize %d", ifp->if_index, hn_vfmap_size));
 if (hn_vfmap[ifp->if_index] != ((void*)0)) {
  KASSERT(hn_vfmap[ifp->if_index] == sc->hn_ifp,
      ("%s: ifindex %d was mapped to %s",
       ifp->if_xname, ifp->if_index,
       hn_vfmap[ifp->if_index]->if_xname));
  hn_vfmap[ifp->if_index] = ((void*)0);
 }

 rm_wunlock(&hn_vfmap_lock);
done:
 HN_UNLOCK(sc);
}

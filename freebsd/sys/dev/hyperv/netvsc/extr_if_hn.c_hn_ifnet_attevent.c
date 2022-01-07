
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_index; int if_input; int if_xname; int * if_start; } ;
struct hn_softc {int hn_flags; int hn_xvf_flags; int hn_vf_init; int hn_vf_taskq; scalar_t__ hn_vf_rdytick; int hn_vf_input; int hn_vf_lock; struct ifnet* hn_vf_ifp; struct ifnet* hn_ifp; } ;


 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LOCK (struct hn_softc*) ;
 int HN_UNLOCK (struct hn_softc*) ;
 int HN_VFMAP_SIZE_DEF ;
 int HN_XVFFLAG_ENABLED ;
 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct ifnet**,int ) ;
 int hn_ismyvf (struct hn_softc*,struct ifnet*) ;
 int hn_suspend_mgmt (struct hn_softc*) ;
 struct ifnet** hn_vfmap ;
 int hn_vfmap_lock ;
 int hn_vfmap_size ;
 scalar_t__ hn_xpnt_vf ;
 int hn_xpnt_vf_attwait ;
 int hn_xpnt_vf_input ;
 int hz ;
 int if_printf (struct ifnet*,char*,int ) ;
 struct ifnet** malloc (int,int ,int) ;
 int memcpy (struct ifnet**,struct ifnet**,int) ;
 int rm_wlock (int *) ;
 int rm_wunlock (int *) ;
 int taskqueue_enqueue_timeout (int ,int *,int) ;
 scalar_t__ ticks ;

__attribute__((used)) static void
hn_ifnet_attevent(void *xsc, struct ifnet *ifp)
{
 struct hn_softc *sc = xsc;

 HN_LOCK(sc);

 if (!(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED))
  goto done;

 if (!hn_ismyvf(sc, ifp))
  goto done;

 if (sc->hn_vf_ifp != ((void*)0)) {
  if_printf(sc->hn_ifp, "%s was attached as VF\n",
      sc->hn_vf_ifp->if_xname);
  goto done;
 }

 if (hn_xpnt_vf && ifp->if_start != ((void*)0)) {




  if_printf(sc->hn_ifp, "%s uses if_start, which is unsupported "
      "in transparent VF mode.\n", ifp->if_xname);
  goto done;
 }

 rm_wlock(&hn_vfmap_lock);

 if (ifp->if_index >= hn_vfmap_size) {
  struct ifnet **newmap;
  int newsize;

  newsize = ifp->if_index + HN_VFMAP_SIZE_DEF;
  newmap = malloc(sizeof(struct ifnet *) * newsize, M_DEVBUF,
      M_WAITOK | M_ZERO);

  memcpy(newmap, hn_vfmap,
      sizeof(struct ifnet *) * hn_vfmap_size);
  free(hn_vfmap, M_DEVBUF);
  hn_vfmap = newmap;
  hn_vfmap_size = newsize;
 }
 KASSERT(hn_vfmap[ifp->if_index] == ((void*)0),
     ("%s: ifindex %d was mapped to %s",
      ifp->if_xname, ifp->if_index, hn_vfmap[ifp->if_index]->if_xname));
 hn_vfmap[ifp->if_index] = sc->hn_ifp;

 rm_wunlock(&hn_vfmap_lock);


 rm_wlock(&sc->hn_vf_lock);
 KASSERT((sc->hn_xvf_flags & HN_XVFFLAG_ENABLED) == 0,
     ("%s: transparent VF was enabled", sc->hn_ifp->if_xname));
 sc->hn_vf_ifp = ifp;
 rm_wunlock(&sc->hn_vf_lock);

 if (hn_xpnt_vf) {
  int wait_ticks;





  sc->hn_vf_input = ifp->if_input;
  ifp->if_input = hn_xpnt_vf_input;




  hn_suspend_mgmt(sc);




  wait_ticks = hn_xpnt_vf_attwait * hz;
  sc->hn_vf_rdytick = ticks + wait_ticks;

  taskqueue_enqueue_timeout(sc->hn_vf_taskq, &sc->hn_vf_init,
      wait_ticks);
 }
done:
 HN_UNLOCK(sc);
}

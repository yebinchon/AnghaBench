
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfsync_softc {int sc_maxupdates; struct pfsync_bucket* sc_buckets; int sc_bulk_mtx; int sc_bulkfail_tmo; int sc_bulk_tmo; int sc_mtx; struct ifnet* sc_ifp; int sc_flags; } ;
struct pfsync_header {int dummy; } ;
struct TYPE_2__ {int ifq_maxlen; } ;
struct pfsync_bucket {int b_id; TYPE_1__ b_snd; int b_tmo; int b_deferrals; int b_upd_req_list; int * b_qs; int b_len; struct pfsync_softc* b_sc; int b_mtx; } ;
struct ifnet {int if_hdrlen; int if_mtu; int if_type; int if_output; int if_ioctl; struct pfsync_softc* if_softc; } ;
struct if_clone {int dummy; } ;
typedef int caddr_t ;


 int DLT_PFSYNC ;
 int EINVAL ;
 int ENOSPC ;
 int ETHERMTU ;
 int IFT_PFSYNC ;
 int MTX_DEF ;
 int M_PFSYNC ;
 int M_WAITOK ;
 int M_ZERO ;
 int PFSYNCF_OK ;
 int PFSYNC_HDRLEN ;
 int PFSYNC_MINPKT ;
 int PFSYNC_S_COUNT ;
 int TAILQ_INIT (int *) ;
 struct pfsync_softc* V_pfsyncif ;
 int bpfattach (struct ifnet*,int ,int ) ;
 int callout_init (int *,int) ;
 int callout_init_mtx (int *,int *,int ) ;
 int free (struct pfsync_softc*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,char*,int) ;
 int ifqmaxlen ;
 struct pfsync_softc* malloc (int,int ,int) ;
 struct pfsync_bucket* mallocarray (int,int,int ,int) ;
 int mp_ncpus ;
 int mtx_init (int *,char*,int *,int ) ;
 int pfsync_buckets ;
 int pfsyncioctl ;
 char* pfsyncname ;
 int pfsyncoutput ;

__attribute__((used)) static int
pfsync_clone_create(struct if_clone *ifc, int unit, caddr_t param)
{
 struct pfsync_softc *sc;
 struct ifnet *ifp;
 struct pfsync_bucket *b;
 int c, q;

 if (unit != 0)
  return (EINVAL);

 if (! pfsync_buckets)
  pfsync_buckets = mp_ncpus * 2;

 sc = malloc(sizeof(struct pfsync_softc), M_PFSYNC, M_WAITOK | M_ZERO);
 sc->sc_flags |= PFSYNCF_OK;
 sc->sc_maxupdates = 128;

 ifp = sc->sc_ifp = if_alloc(IFT_PFSYNC);
 if (ifp == ((void*)0)) {
  free(sc, M_PFSYNC);
  return (ENOSPC);
 }
 if_initname(ifp, pfsyncname, unit);
 ifp->if_softc = sc;
 ifp->if_ioctl = pfsyncioctl;
 ifp->if_output = pfsyncoutput;
 ifp->if_type = IFT_PFSYNC;
 ifp->if_hdrlen = sizeof(struct pfsync_header);
 ifp->if_mtu = ETHERMTU;
 mtx_init(&sc->sc_mtx, pfsyncname, ((void*)0), MTX_DEF);
 mtx_init(&sc->sc_bulk_mtx, "pfsync bulk", ((void*)0), MTX_DEF);
 callout_init_mtx(&sc->sc_bulk_tmo, &sc->sc_bulk_mtx, 0);
 callout_init_mtx(&sc->sc_bulkfail_tmo, &sc->sc_bulk_mtx, 0);

 if_attach(ifp);

 bpfattach(ifp, DLT_PFSYNC, PFSYNC_HDRLEN);

 sc->sc_buckets = mallocarray(pfsync_buckets, sizeof(*sc->sc_buckets),
     M_PFSYNC, M_ZERO | M_WAITOK);
 for (c = 0; c < pfsync_buckets; c++) {
  b = &sc->sc_buckets[c];
  mtx_init(&b->b_mtx, "pfsync bucket", ((void*)0), MTX_DEF);

  b->b_id = c;
  b->b_sc = sc;
  b->b_len = PFSYNC_MINPKT;

  for (q = 0; q < PFSYNC_S_COUNT; q++)
   TAILQ_INIT(&b->b_qs[q]);

  TAILQ_INIT(&b->b_upd_req_list);
  TAILQ_INIT(&b->b_deferrals);

  callout_init(&b->b_tmo, 1);

  b->b_snd.ifq_maxlen = ifqmaxlen;
 }

 V_pfsyncif = sc;

 return (0);
}

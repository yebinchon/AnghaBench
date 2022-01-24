#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pfsync_softc {int sc_maxupdates; struct pfsync_bucket* sc_buckets; int /*<<< orphan*/  sc_bulk_mtx; int /*<<< orphan*/  sc_bulkfail_tmo; int /*<<< orphan*/  sc_bulk_tmo; int /*<<< orphan*/  sc_mtx; struct ifnet* sc_ifp; int /*<<< orphan*/  sc_flags; } ;
struct pfsync_header {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct pfsync_bucket {int b_id; TYPE_1__ b_snd; int /*<<< orphan*/  b_tmo; int /*<<< orphan*/  b_deferrals; int /*<<< orphan*/  b_upd_req_list; int /*<<< orphan*/ * b_qs; int /*<<< orphan*/  b_len; struct pfsync_softc* b_sc; int /*<<< orphan*/  b_mtx; } ;
struct ifnet {int if_hdrlen; int /*<<< orphan*/  if_mtu; int /*<<< orphan*/  if_type; int /*<<< orphan*/  if_output; int /*<<< orphan*/  if_ioctl; struct pfsync_softc* if_softc; } ;
struct if_clone {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_PFSYNC ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  ETHERMTU ; 
 int /*<<< orphan*/  IFT_PFSYNC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_PFSYNC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PFSYNCF_OK ; 
 int /*<<< orphan*/  PFSYNC_HDRLEN ; 
 int /*<<< orphan*/  PFSYNC_MINPKT ; 
 int PFSYNC_S_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pfsync_softc* V_pfsyncif ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pfsync_softc*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,char*,int) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 struct pfsync_softc* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 struct pfsync_bucket* FUNC9 (int,int,int /*<<< orphan*/ ,int) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int pfsync_buckets ; 
 int /*<<< orphan*/  pfsyncioctl ; 
 char* pfsyncname ; 
 int /*<<< orphan*/  pfsyncoutput ; 

__attribute__((used)) static int
FUNC11(struct if_clone *ifc, int unit, caddr_t param)
{
	struct pfsync_softc *sc;
	struct ifnet *ifp;
	struct pfsync_bucket *b;
	int c, q;

	if (unit != 0)
		return (EINVAL);

	if (! pfsync_buckets)
		pfsync_buckets = mp_ncpus * 2;

	sc = FUNC8(sizeof(struct pfsync_softc), M_PFSYNC, M_WAITOK | M_ZERO);
	sc->sc_flags |= PFSYNCF_OK;
	sc->sc_maxupdates = 128;

	ifp = sc->sc_ifp = FUNC5(IFT_PFSYNC);
	if (ifp == NULL) {
		FUNC4(sc, M_PFSYNC);
		return (ENOSPC);
	}
	FUNC7(ifp, pfsyncname, unit);
	ifp->if_softc = sc;
	ifp->if_ioctl = pfsyncioctl;
	ifp->if_output = pfsyncoutput;
	ifp->if_type = IFT_PFSYNC;
	ifp->if_hdrlen = sizeof(struct pfsync_header);
	ifp->if_mtu = ETHERMTU;
	FUNC10(&sc->sc_mtx, pfsyncname, NULL, MTX_DEF);
	FUNC10(&sc->sc_bulk_mtx, "pfsync bulk", NULL, MTX_DEF);
	FUNC3(&sc->sc_bulk_tmo, &sc->sc_bulk_mtx, 0);
	FUNC3(&sc->sc_bulkfail_tmo, &sc->sc_bulk_mtx, 0);

	FUNC6(ifp);

	FUNC1(ifp, DLT_PFSYNC, PFSYNC_HDRLEN);

	sc->sc_buckets = FUNC9(pfsync_buckets, sizeof(*sc->sc_buckets),
	    M_PFSYNC, M_ZERO | M_WAITOK);
	for (c = 0; c < pfsync_buckets; c++) {
		b = &sc->sc_buckets[c];
		FUNC10(&b->b_mtx, "pfsync bucket", NULL, MTX_DEF);

		b->b_id = c;
		b->b_sc = sc;
		b->b_len = PFSYNC_MINPKT;

		for (q = 0; q < PFSYNC_S_COUNT; q++)
			FUNC0(&b->b_qs[q]);

		FUNC0(&b->b_upd_req_list);
		FUNC0(&b->b_deferrals);

		FUNC2(&b->b_tmo, 1);

		b->b_snd.ifq_maxlen = ifqmaxlen;
	}

	V_pfsyncif = sc;

	return (0);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  int vm_offset_t ;
struct TYPE_12__ {scalar_t__ elion; scalar_t__ bpid; scalar_t__ liodn; } ;
typedef  TYPE_3__ t_DpaaFD ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; scalar_t__ m_data; } ;
struct dtsec_softc {int sc_tx_fqr_full; int /*<<< orphan*/  sc_tx_fqr; TYPE_2__* sc_ifnet; TYPE_1__* sc_mii; } ;
struct dtsec_rm_frame_info {int /*<<< orphan*/ * fi_sgt; struct mbuf* fi_mbuf; } ;
struct TYPE_11__ {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct TYPE_10__ {int mii_media_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 unsigned int DPAA_NUM_OF_SG_TABLE_ENTRY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct dtsec_softc*) ; 
 unsigned int DTSEC_MAX_TX_QUEUE_LEN ; 
 int /*<<< orphan*/  FUNC13 (struct dtsec_softc*) ; 
 scalar_t__ E_OK ; 
 int IFF_DRV_RUNNING ; 
 int IFM_ACTIVE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 struct dtsec_rm_frame_info* FUNC16 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct dtsec_softc*,struct dtsec_rm_frame_info*) ; 
 int /*<<< orphan*/  e_DPAA_FD_FORMAT_TYPE_SHORT_MBSF ; 
 int /*<<< orphan*/  e_QM_FQR_COUNTERS_FRAME ; 
 int /*<<< orphan*/  FUNC18 (struct mbuf*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 unsigned int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC21(struct dtsec_softc *sc)
{
	vm_size_t dsize, psize, ssize;
	struct dtsec_rm_frame_info *fi;
	unsigned int qlen, i;
	struct mbuf *m0, *m;
	vm_offset_t vaddr;
	t_DpaaFD fd;

	FUNC12(sc);
	/* TODO: IFF_DRV_OACTIVE */

	if ((sc->sc_mii->mii_media_status & IFM_ACTIVE) == 0)
		return;

	if ((sc->sc_ifnet->if_drv_flags & IFF_DRV_RUNNING) != IFF_DRV_RUNNING)
		return;

	while (!FUNC15(&sc->sc_ifnet->if_snd)) {
		/* Check length of the TX queue */
		qlen = FUNC20(sc->sc_tx_fqr, 0,
		    e_QM_FQR_COUNTERS_FRAME);

		if (qlen >= DTSEC_MAX_TX_QUEUE_LEN) {
			sc->sc_tx_fqr_full = 1;
			return;
		}

		fi = FUNC16(sc);
		if (fi == NULL)
			return;

		FUNC14(&sc->sc_ifnet->if_snd, m0);
		if (m0 == NULL) {
			FUNC17(sc, fi);
			return;
		}

		i = 0;
		m = m0;
		psize = 0;
		dsize = 0;
		fi->fi_mbuf = m0;
		while (m && i < DPAA_NUM_OF_SG_TABLE_ENTRY) {
			if (m->m_len == 0)
				continue;

			/*
			 * First entry in scatter-gather table is used to keep
			 * pointer to frame info structure.
			 */
			FUNC5(&fi->fi_sgt[i], (void *)fi);
			FUNC9(&fi->fi_sgt[i], 0);

			FUNC7(&fi->fi_sgt[i], 0);
			FUNC8(&fi->fi_sgt[i], 0);
			FUNC6(&fi->fi_sgt[i], 0);
			FUNC10(&fi->fi_sgt[i], 0);
			i++;

			dsize = m->m_len;
			vaddr = (vm_offset_t)m->m_data;
			while (dsize > 0 && i < DPAA_NUM_OF_SG_TABLE_ENTRY) {
				ssize = PAGE_SIZE - (vaddr & PAGE_MASK);
				if (m->m_len < ssize)
					ssize = m->m_len;

				FUNC5(&fi->fi_sgt[i],
				    (void *)vaddr);
				FUNC9(&fi->fi_sgt[i], ssize);

				FUNC7(&fi->fi_sgt[i], 0);
				FUNC8(&fi->fi_sgt[i], 0);
				FUNC6(&fi->fi_sgt[i], 0);
				FUNC10(&fi->fi_sgt[i], 0);

				dsize -= ssize;
				vaddr += ssize;
				psize += ssize;
				i++;
			}

			if (dsize > 0)
				break;

			m = m->m_next;
		}

		/* Check if SG table was constructed properly */
		if (m != NULL || dsize != 0) {
			FUNC17(sc, fi);
			FUNC18(m0);
			continue;
		}

		FUNC8(&fi->fi_sgt[i-1], 1);

		FUNC0(&fd, fi->fi_sgt);
		FUNC2(&fd, psize);
		FUNC1(&fd, e_DPAA_FD_FORMAT_TYPE_SHORT_MBSF);

		fd.liodn = 0;
		fd.bpid = 0;
		fd.elion = 0;
		FUNC3(&fd, 0);
		FUNC4(&fd, 0);

		FUNC13(sc);
		if (FUNC19(sc->sc_tx_fqr, 0, &fd) != E_OK) {
			FUNC17(sc, fi);
			FUNC18(m0);
		}
		FUNC11(sc);
	}
}
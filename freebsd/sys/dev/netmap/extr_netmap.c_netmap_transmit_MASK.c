#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u_int ;
struct mbq {int dummy; } ;
struct netmap_kring {scalar_t__ nr_mode; int nr_hwtail; int nr_hwcur; int nkr_num_slots; int /*<<< orphan*/  (* nm_notify ) (struct netmap_kring*,int /*<<< orphan*/ ) ;struct mbq rx_queue; } ;
struct netmap_adapter {size_t num_host_rx_rings; unsigned int num_tx_rings; int /*<<< orphan*/  name; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 size_t ENOBUFS ; 
 size_t ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 size_t FUNC1 (struct mbuf*) ; 
 int FUNC2 (struct netmap_adapter*,struct ifnet*,struct mbuf*) ; 
 void* FUNC3 (struct mbuf*) ; 
 struct netmap_adapter* FUNC4 (struct ifnet*) ; 
 size_t FUNC5 (struct netmap_adapter*) ; 
 scalar_t__ NKR_NETMAP_OFF ; 
 struct netmap_kring** FUNC6 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NR_RX ; 
 int /*<<< orphan*/  NR_TX ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbq*,struct mbuf*) ; 
 int FUNC9 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC10 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC11 (struct mbq*) ; 
 int /*<<< orphan*/  netmap_generic_hwcsum ; 
 int /*<<< orphan*/  FUNC12 (struct netmap_adapter*) ; 
 scalar_t__ FUNC13 (struct mbuf*) ; 
 scalar_t__ FUNC14 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,int /*<<< orphan*/ ,...) ; 
 size_t FUNC18 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct netmap_kring*,int /*<<< orphan*/ ) ; 

int
FUNC20(struct ifnet *ifp, struct mbuf *m)
{
	struct netmap_adapter *na = FUNC4(ifp);
	struct netmap_kring *kring, *tx_kring;
	u_int len = FUNC1(m);
	u_int error = ENOBUFS;
	unsigned int txr;
	struct mbq *q;
	int busy;
	u_int i;

	i = FUNC3(m);
	if (i >= na->num_host_rx_rings) {
		i = i % na->num_host_rx_rings;
	}
	kring = FUNC6(na, NR_RX)[FUNC18(na, NR_RX) + i];

	// XXX [Linux] we do not need this lock
	// if we follow the down/configure/up protocol -gl
	// mtx_lock(&na->core_lock);

	if (!FUNC12(na)) {
		FUNC16("%s not in netmap mode anymore", na->name);
		error = ENXIO;
		goto done;
	}

	txr = FUNC3(m);
	if (txr >= na->num_tx_rings) {
		txr %= na->num_tx_rings;
	}
	tx_kring = FUNC6(na, NR_TX)[txr];

	if (tx_kring->nr_mode == NKR_NETMAP_OFF) {
		return FUNC2(na, ifp, m);
	}

	q = &kring->rx_queue;

	// XXX reconsider long packets if we handle fragments
	if (len > FUNC5(na)) { /* too long for us */
		FUNC16("%s from_host, drop packet size %d > %d", na->name,
			len, FUNC5(na));
		goto done;
	}

	if (!netmap_generic_hwcsum) {
		if (FUNC13(m)) {
			FUNC17(1, "%s drop mbuf that needs checksum offload", na->name);
			goto done;
		}
	}

	if (FUNC14(m)) {
		FUNC17(1, "%s drop mbuf that needs generic segmentation offload", na->name);
		goto done;
	}

#ifdef __FreeBSD__
	ETHER_BPF_MTAP(ifp, m);
#endif /* __FreeBSD__ */

	/* protect against netmap_rxsync_from_host(), netmap_sw_to_nic()
	 * and maybe other instances of netmap_transmit (the latter
	 * not possible on Linux).
	 * We enqueue the mbuf only if we are sure there is going to be
	 * enough room in the host RX ring, otherwise we drop it.
	 */
	FUNC10(q);

	busy = kring->nr_hwtail - kring->nr_hwcur;
	if (busy < 0)
		busy += kring->nkr_num_slots;
	if (busy + FUNC9(q) >= kring->nkr_num_slots - 1) {
		FUNC17(2, "%s full hwcur %d hwtail %d qlen %d", na->name,
			kring->nr_hwcur, kring->nr_hwtail, FUNC9(q));
	} else {
		FUNC8(q, m);
		FUNC15(2, "%s %d bufs in queue", na->name, FUNC9(q));
		/* notify outside the lock */
		m = NULL;
		error = 0;
	}
	FUNC11(q);

done:
	if (m)
		FUNC7(m);
	/* unconditionally wake up listeners */
	kring->nm_notify(kring, 0);
	/* this is normally netmap_notify(), but for nics
	 * connected to a bridge it is netmap_bwrap_intr_notify(),
	 * that possibly forwards the frames through the switch
	 */

	return (error);
}
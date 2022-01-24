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
typedef  scalar_t__ uint32_t ;
struct ndis_rssprm_toeplitz {scalar_t__* rss_ind; int /*<<< orphan*/  rss_key; } ;
struct hn_softc {int hn_flags; scalar_t__ hn_caps; int hn_rx_ring_cnt; int hn_xvf_flags; int /*<<< orphan*/  hn_prichan; scalar_t__ hn_rss_hcap; scalar_t__ hn_rss_hash; int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_dev; scalar_t__ hn_rss_ind_size; struct ndis_rssprm_toeplitz hn_rss; } ;

/* Variables and functions */
 scalar_t__ ATTACHED_NVS ; 
 scalar_t__ ATTACHED_RNDIS ; 
 int ENXIO ; 
 int HN_FLAG_HAS_RSSIND ; 
 int HN_FLAG_HAS_RSSKEY ; 
 int HN_FLAG_RXVF ; 
 int HN_FLAG_SYNTH_ATTACHED ; 
 int HN_XVFFLAG_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NDIS_HASH_INDCNT ; 
 int /*<<< orphan*/  NDIS_RSS_FLAG_NONE ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hn_softc*) ; 
 int FUNC3 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hn_softc*) ; 
 int FUNC7 (struct hn_softc*,int,int*) ; 
 int FUNC8 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hn_softc*) ; 
 int /*<<< orphan*/  hn_rss_key_default ; 
 int /*<<< orphan*/  FUNC12 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct hn_softc*) ; 
 int FUNC14 (struct hn_softc*,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(struct hn_softc *sc, int mtu)
{
#define ATTACHED_NVS		0x0002
#define ATTACHED_RNDIS		0x0004

	struct ndis_rssprm_toeplitz *rss = &sc->hn_rss;
	int error, nsubch, nchan = 1, i, rndis_inited;
	uint32_t old_caps, attached = 0;

	FUNC0((sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) == 0,
	    ("synthetic parts were attached"));

	if (!FUNC15(sc))
		return (ENXIO);

	/* Save capabilities for later verification. */
	old_caps = sc->hn_caps;
	sc->hn_caps = 0;

	/* Clear RSS stuffs. */
	sc->hn_rss_ind_size = 0;
	sc->hn_rss_hash = 0;
	sc->hn_rss_hcap = 0;

	/*
	 * Attach the primary channel _before_ attaching NVS and RNDIS.
	 */
	error = FUNC3(sc, sc->hn_prichan);
	if (error)
		goto failed;

	/*
	 * Attach NVS.
	 */
	error = FUNC5(sc, mtu);
	if (error)
		goto failed;
	attached |= ATTACHED_NVS;

	/*
	 * Attach RNDIS _after_ NVS is attached.
	 */
	error = FUNC7(sc, mtu, &rndis_inited);
	if (rndis_inited)
		attached |= ATTACHED_RNDIS;
	if (error)
		goto failed;

	/*
	 * Make sure capabilities are not changed.
	 */
	if (FUNC1(sc->hn_dev) && old_caps != sc->hn_caps) {
		FUNC18(sc->hn_ifp, "caps mismatch old 0x%08x, new 0x%08x\n",
		    old_caps, sc->hn_caps);
		error = ENXIO;
		goto failed;
	}

	/*
	 * Allocate sub-channels for multi-TX/RX rings.
	 *
	 * NOTE:
	 * The # of RX rings that can be used is equivalent to the # of
	 * channels to be requested.
	 */
	nsubch = sc->hn_rx_ring_cnt - 1;
	error = FUNC14(sc, &nsubch);
	if (error)
		goto failed;
	/* NOTE: _Full_ synthetic parts detach is required now. */
	sc->hn_flags |= HN_FLAG_SYNTH_ATTACHED;

	/*
	 * Set the # of TX/RX rings that could be used according to
	 * the # of channels that NVS offered.
	 */
	nchan = nsubch + 1;
	FUNC12(sc, nchan);
	if (nchan == 1) {
		/* Only the primary channel can be used; done */
		goto back;
	}

	/*
	 * Attach the sub-channels.
	 *
	 * NOTE: hn_set_ring_inuse() _must_ have been called.
	 */
	error = FUNC2(sc);
	if (error)
		goto failed;

	/*
	 * Configure RSS key and indirect table _after_ all sub-channels
	 * are attached.
	 */
	if ((sc->hn_flags & HN_FLAG_HAS_RSSKEY) == 0) {
		/*
		 * RSS key is not set yet; set it to the default RSS key.
		 */
		if (bootverbose)
			FUNC18(sc->hn_ifp, "setup default RSS key\n");
#ifdef RSS
		rss_getkey(rss->rss_key);
#else
		FUNC19(rss->rss_key, hn_rss_key_default, sizeof(rss->rss_key));
#endif
		sc->hn_flags |= HN_FLAG_HAS_RSSKEY;
	}

	if ((sc->hn_flags & HN_FLAG_HAS_RSSIND) == 0) {
		/*
		 * RSS indirect table is not set yet; set it up in round-
		 * robin fashion.
		 */
		if (bootverbose) {
			FUNC18(sc->hn_ifp, "setup default RSS indirect "
			    "table\n");
		}
		for (i = 0; i < NDIS_HASH_INDCNT; ++i) {
			uint32_t subidx;

#ifdef RSS
			subidx = rss_get_indirection_to_bucket(i);
#else
			subidx = i;
#endif
			rss->rss_ind[i] = subidx % nchan;
		}
		sc->hn_flags |= HN_FLAG_HAS_RSSIND;
	} else {
		/*
		 * # of usable channels may be changed, so we have to
		 * make sure that all entries in RSS indirect table
		 * are valid.
		 *
		 * NOTE: hn_set_ring_inuse() _must_ have been called.
		 */
		FUNC11(sc);
	}

	sc->hn_rss_hash = sc->hn_rss_hcap;
	if ((sc->hn_flags & HN_FLAG_RXVF) ||
	    (sc->hn_xvf_flags & HN_XVFFLAG_ENABLED)) {
		/* NOTE: Don't reconfigure RSS; will do immediately. */
		FUNC17(sc, false);
	}
	error = FUNC8(sc, NDIS_RSS_FLAG_NONE);
	if (error)
		goto failed;
back:
	/*
	 * Fixup transmission aggregation setup.
	 */
	FUNC13(sc);
	FUNC10(sc, nchan);
	return (0);

failed:
	if (sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) {
		FUNC10(sc, nchan);
		FUNC16(sc);
	} else {
		if (attached & ATTACHED_RNDIS) {
			FUNC10(sc, nchan);
			FUNC9(sc);
		}
		if (attached & ATTACHED_NVS)
			FUNC6(sc);
		FUNC4(sc, sc->hn_prichan);
		/* Restore old capabilities. */
		sc->hn_caps = old_caps;
	}
	return (error);

#undef ATTACHED_RNDIS
#undef ATTACHED_NVS
}
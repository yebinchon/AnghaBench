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
struct vi_info {int xact_addr_filt; scalar_t__ nofldrxq; scalar_t__ nofldtxq; scalar_t__ nnmrxq; scalar_t__ nrxq; int /*<<< orphan*/  nnmtxq; int /*<<< orphan*/  ntxq; int /*<<< orphan*/  hw_addr; TYPE_1__* pi; struct ifnet* ifp; int /*<<< orphan*/  tick; } ;
struct sbuf {int dummy; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hwassist; int if_hw_tsomaxsegsize; int /*<<< orphan*/  if_hw_tsomaxsegcount; int /*<<< orphan*/  if_hw_tsomax; int /*<<< orphan*/  if_ratelimit_query; int /*<<< orphan*/  if_snd_tag_free; int /*<<< orphan*/  if_snd_tag_query; int /*<<< orphan*/  if_snd_tag_modify; int /*<<< orphan*/  if_snd_tag_alloc; int /*<<< orphan*/  if_get_counter; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; struct vi_info* if_softc; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int ENOMEM ; 
 int IFCAP_NETMAP ; 
#define  IFCAP_TOE 129 
#define  IFCAP_TXRTLMT 128 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  IP_MAXPACKET ; 
 int T4_CAP ; 
 int T4_CAP_ENABLE ; 
 int /*<<< orphan*/  TX_SGL_SEGS_EO_TSO ; 
 int /*<<< orphan*/  TX_SGL_SEGS_TSO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cxgbe_get_counter ; 
 int /*<<< orphan*/  cxgbe_init ; 
 int /*<<< orphan*/  cxgbe_ioctl ; 
 int /*<<< orphan*/  FUNC1 (struct vi_info*) ; 
 int /*<<< orphan*/  cxgbe_qflush ; 
 int /*<<< orphan*/  cxgbe_ratelimit_query ; 
 int /*<<< orphan*/  cxgbe_snd_tag_alloc ; 
 int /*<<< orphan*/  cxgbe_snd_tag_free ; 
 int /*<<< orphan*/  cxgbe_snd_tag_modify ; 
 int /*<<< orphan*/  cxgbe_snd_tag_query ; 
 int /*<<< orphan*/  cxgbe_transmit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*) ; 
 struct sbuf* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct sbuf*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC14 (struct vi_info*) ; 

__attribute__((used)) static int
FUNC15(device_t dev, struct vi_info *vi)
{
	struct ifnet *ifp;
	struct sbuf *sb;

	vi->xact_addr_filt = -1;
	FUNC0(&vi->tick, 1);

	/* Allocate an ifnet and set it up */
	ifp = FUNC6(IFT_ETHER, dev);
	if (ifp == NULL) {
		FUNC4(dev, "Cannot allocate ifnet\n");
		return (ENOMEM);
	}
	vi->ifp = ifp;
	ifp->if_softc = vi;

	FUNC7(ifp, FUNC2(dev), FUNC3(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;

	ifp->if_init = cxgbe_init;
	ifp->if_ioctl = cxgbe_ioctl;
	ifp->if_transmit = cxgbe_transmit;
	ifp->if_qflush = cxgbe_qflush;
	ifp->if_get_counter = cxgbe_get_counter;
#ifdef RATELIMIT
	ifp->if_snd_tag_alloc = cxgbe_snd_tag_alloc;
	ifp->if_snd_tag_modify = cxgbe_snd_tag_modify;
	ifp->if_snd_tag_query = cxgbe_snd_tag_query;
	ifp->if_snd_tag_free = cxgbe_snd_tag_free;
	ifp->if_ratelimit_query = cxgbe_ratelimit_query;
#endif

	ifp->if_capabilities = T4_CAP;
	ifp->if_capenable = T4_CAP_ENABLE;
#ifdef TCP_OFFLOAD
	if (vi->nofldrxq != 0)
		ifp->if_capabilities |= IFCAP_TOE;
#endif
#ifdef RATELIMIT
	if (is_ethoffload(vi->pi->adapter) && vi->nofldtxq != 0) {
		ifp->if_capabilities |= IFCAP_TXRTLMT;
		ifp->if_capenable |= IFCAP_TXRTLMT;
	}
#endif
	ifp->if_hwassist = CSUM_TCP | CSUM_UDP | CSUM_IP | CSUM_TSO |
	    CSUM_UDP_IPV6 | CSUM_TCP_IPV6;

	ifp->if_hw_tsomax = IP_MAXPACKET;
	ifp->if_hw_tsomaxsegcount = TX_SGL_SEGS_TSO;
#ifdef RATELIMIT
	if (is_ethoffload(vi->pi->adapter) && vi->nofldtxq != 0)
		ifp->if_hw_tsomaxsegcount = TX_SGL_SEGS_EO_TSO;
#endif
	ifp->if_hw_tsomaxsegsize = 65536;

	FUNC5(ifp, vi->hw_addr);
#ifdef DEV_NETMAP
	if (vi->nnmrxq != 0)
		cxgbe_nm_attach(vi);
#endif
	sb = FUNC12();
	FUNC13(sb, "%d txq, %d rxq (NIC)", vi->ntxq, vi->nrxq);
#if defined(TCP_OFFLOAD) || defined(RATELIMIT)
	switch (ifp->if_capabilities & (IFCAP_TOE | IFCAP_TXRTLMT)) {
	case IFCAP_TOE:
		sbuf_printf(sb, "; %d txq (TOE)", vi->nofldtxq);
		break;
	case IFCAP_TOE | IFCAP_TXRTLMT:
		sbuf_printf(sb, "; %d txq (TOE/ETHOFLD)", vi->nofldtxq);
		break;
	case IFCAP_TXRTLMT:
		sbuf_printf(sb, "; %d txq (ETHOFLD)", vi->nofldtxq);
		break;
	}
#endif
#ifdef TCP_OFFLOAD
	if (ifp->if_capabilities & IFCAP_TOE)
		sbuf_printf(sb, ", %d rxq (TOE)", vi->nofldrxq);
#endif
#ifdef DEV_NETMAP
	if (ifp->if_capabilities & IFCAP_NETMAP)
		sbuf_printf(sb, "; %d txq, %d rxq (netmap)",
		    vi->nnmtxq, vi->nnmrxq);
#endif
	FUNC11(sb);
	FUNC4(dev, "%s\n", FUNC9(sb));
	FUNC10(sb);

	FUNC14(vi);

	return (0);
}
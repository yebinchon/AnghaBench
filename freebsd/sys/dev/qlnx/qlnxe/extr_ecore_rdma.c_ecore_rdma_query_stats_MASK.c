#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct roce_events_stats {int dummy; } ;
struct roce_dcqcn_sent_stats {int dummy; } ;
struct roce_dcqcn_received_stats {int dummy; } ;
struct rdma_sent_stats {int dummy; } ;
struct rdma_rcv_stats {int dummy; } ;
struct iwarp_rxmit_stats_drv {int dummy; } ;
struct ecore_rdma_stats_out_params {int /*<<< orphan*/  unalign_rx_comp; void* tx_go_to_slow_start_event_cnt; void* iwarp_tx_slow_start_cnt; void* tx_fast_retransmit_event_cnt; void* iwarp_tx_fast_rxmit_cnt; void* cnp_pkt_sent; void* cnp_pkt_rcv; void* ecn_pkt_rcv; int /*<<< orphan*/  retransmit_count; void* retransmit_events; int /*<<< orphan*/  icrc_error_count; void* icrc_errors; void* rnr_naks_sent; void* rnr_nacks_sent; void* silent_drops; void* rcv_pkts; void* rcv_bytes; void* sent_pkts; void* sent_bytes; } ;
struct TYPE_6__ {int /*<<< orphan*/  unalign_rx_comp; struct ecore_rdma_stats_out_params stats; } ;
struct TYPE_5__ {struct ecore_rdma_stats_out_params dcqcn_tx_stats; struct ecore_rdma_stats_out_params dcqcn_rx_stats; struct ecore_rdma_stats_out_params event_stats; } ;
struct ecore_rdma_info {TYPE_3__ iwarp; TYPE_2__ roce; struct ecore_rdma_stats_out_params rdma_rcv_tstats; struct ecore_rdma_stats_out_params rdma_sent_pstats; TYPE_1__* dev; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  rel_pf_id; int /*<<< orphan*/  p_dev; struct ecore_rdma_info* p_rdma_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {scalar_t__ max_stats_queues; } ;

/* Variables and functions */
 scalar_t__ BAR0_MAP_REG_PSDM_RAM ; 
 scalar_t__ BAR0_MAP_REG_TSDM_RAM ; 
 scalar_t__ BAR0_MAP_REG_XSDM_RAM ; 
 scalar_t__ BAR0_MAP_REG_YSDM_RAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  ECORE_RDMA_STATS_QUEUE ; 
 int ECORE_SUCCESS ; 
 int ECORE_TIMEOUT ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_rdma_stats_out_params*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_rdma_stats_out_params*,scalar_t__,int) ; 
 struct ecore_ptt* FUNC15 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC16 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC17 (struct ecore_hwfn*) ; 
 int FUNC18 (struct ecore_hwfn*) ; 

enum _ecore_status_t FUNC19(void *rdma_cxt, u8 stats_queue,
				struct ecore_rdma_stats_out_params *out_params)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	u8 abs_stats_queue, max_stats_queues;
	u32 pstats_addr, tstats_addr, addr;
	struct ecore_rdma_info *info;
	struct ecore_ptt *p_ptt;
#ifdef CONFIG_ECORE_IWARP
	u32 xstats_addr;
#endif
	enum _ecore_status_t rc = ECORE_SUCCESS;

	if (!p_hwfn)
		return ECORE_INVAL;

	if (!p_hwfn->p_rdma_info) {
		FUNC1(p_hwfn->p_dev, "ecore rdma query stats failed due to NULL rdma_info\n");
		return ECORE_INVAL;
	}

	info = p_hwfn->p_rdma_info;

	rc = FUNC18(p_hwfn);
	if (rc != ECORE_SUCCESS)
		return rc;

	max_stats_queues = p_hwfn->p_rdma_info->dev->max_stats_queues;
	if (stats_queue >= max_stats_queues) {
		FUNC0(p_hwfn->p_dev,
		       "ecore rdma query stats failed due to invalid statistics queue %d. maximum is %d\n",
		       stats_queue, max_stats_queues);
		rc = ECORE_INVAL;
		goto err;
	}

	/* Statistics collected in statistics queues (for PF/VF) */
	abs_stats_queue = FUNC9(p_hwfn, ECORE_RDMA_STATS_QUEUE) +
			    stats_queue;
	pstats_addr = BAR0_MAP_REG_PSDM_RAM +
		      FUNC7(abs_stats_queue);
	tstats_addr = BAR0_MAP_REG_TSDM_RAM +
		      FUNC10(abs_stats_queue);

#ifdef CONFIG_ECORE_IWARP
	/* Statistics per PF ID */
	xstats_addr = BAR0_MAP_REG_XSDM_RAM +
		      XSTORM_IWARP_RXMIT_STATS_OFFSET(p_hwfn->rel_pf_id);
#endif

	FUNC6(&info->rdma_sent_pstats, 0, sizeof(info->rdma_sent_pstats));
	FUNC6(&info->rdma_rcv_tstats, 0, sizeof(info->rdma_rcv_tstats));
	FUNC6(&info->roce.event_stats, 0, sizeof(info->roce.event_stats));
	FUNC6(&info->roce.dcqcn_rx_stats, 0,sizeof(info->roce.dcqcn_rx_stats));
	FUNC6(&info->roce.dcqcn_tx_stats, 0,sizeof(info->roce.dcqcn_tx_stats));
#ifdef CONFIG_ECORE_IWARP
	OSAL_MEMSET(&info->iwarp.stats, 0, sizeof(info->iwarp.stats));
#endif

	p_ptt = FUNC15(p_hwfn);

	if (!p_ptt) {
		rc = ECORE_TIMEOUT;
		FUNC2(p_hwfn, ECORE_MSG_RDMA, "rc = %d\n", rc);
		goto err;
	}

	FUNC14(p_hwfn, p_ptt, &info->rdma_sent_pstats,
			  pstats_addr, sizeof(struct rdma_sent_stats));

	FUNC14(p_hwfn, p_ptt, &info->rdma_rcv_tstats,
			  tstats_addr, sizeof(struct rdma_rcv_stats));

	addr = BAR0_MAP_REG_TSDM_RAM +
	       FUNC11(p_hwfn->rel_pf_id);
	FUNC14(p_hwfn, p_ptt, &info->roce.event_stats, addr,
			  sizeof(struct roce_events_stats));

	addr = BAR0_MAP_REG_YSDM_RAM +
		FUNC13(p_hwfn->rel_pf_id);
	FUNC14(p_hwfn, p_ptt, &info->roce.dcqcn_rx_stats, addr,
			  sizeof(struct roce_dcqcn_received_stats));

	addr = BAR0_MAP_REG_PSDM_RAM +
	       FUNC8(p_hwfn->rel_pf_id);
	FUNC14(p_hwfn, p_ptt, &info->roce.dcqcn_tx_stats, addr,
			  sizeof(struct roce_dcqcn_sent_stats));

#ifdef CONFIG_ECORE_IWARP
	ecore_memcpy_from(p_hwfn, p_ptt, &info->iwarp.stats,
			  xstats_addr, sizeof(struct iwarp_rxmit_stats_drv));
#endif

	FUNC16(p_hwfn, p_ptt);

	FUNC6(out_params, 0, sizeof(*out_params));

	out_params->sent_bytes =
		FUNC3(info->rdma_sent_pstats.sent_bytes);
	out_params->sent_pkts =
		FUNC3(info->rdma_sent_pstats.sent_pkts);
	out_params->rcv_bytes =
		FUNC3(info->rdma_rcv_tstats.rcv_bytes);
	out_params->rcv_pkts =
		FUNC3(info->rdma_rcv_tstats.rcv_pkts);

	out_params->silent_drops =
		FUNC4(info->roce.event_stats.silent_drops);
	out_params->rnr_nacks_sent =
		FUNC4(info->roce.event_stats.rnr_naks_sent);
	out_params->icrc_errors =
		FUNC5(info->roce.event_stats.icrc_error_count);
	out_params->retransmit_events =
		FUNC5(info->roce.event_stats.retransmit_count);
	out_params->ecn_pkt_rcv =
		FUNC3(info->roce.dcqcn_rx_stats.ecn_pkt_rcv);
	out_params->cnp_pkt_rcv =
		FUNC3(info->roce.dcqcn_rx_stats.cnp_pkt_rcv);
	out_params->cnp_pkt_sent =
		FUNC3(info->roce.dcqcn_tx_stats.cnp_pkt_sent);

#ifdef CONFIG_ECORE_IWARP
	out_params->iwarp_tx_fast_rxmit_cnt =
		HILO_64_REGPAIR(info->iwarp.stats.tx_fast_retransmit_event_cnt);
	out_params->iwarp_tx_slow_start_cnt =
		HILO_64_REGPAIR(
			info->iwarp.stats.tx_go_to_slow_start_event_cnt);
	out_params->unalign_rx_comp = info->iwarp.unalign_rx_comp;
#endif

err:
	FUNC17(p_hwfn);

	return rc;
}
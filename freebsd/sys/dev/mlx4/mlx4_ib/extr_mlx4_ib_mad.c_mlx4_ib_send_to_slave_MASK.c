#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u64 ;
typedef  int u16 ;
struct TYPE_20__ {int g_ml_path; void* slid_mac_47_32; void* sl_vid; int /*<<< orphan*/  mac_31_0; int /*<<< orphan*/  flags_src_qp; void* pkey_index; } ;
struct mlx4_rcv_tunnel_mad {char grh; char mad; TYPE_1__ hdr; } ;
struct TYPE_24__ {int*** virt2phys_pkey; } ;
struct TYPE_23__ {TYPE_3__* demux; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  ib_dev; TYPE_12__* dev; TYPE_5__ pkeys; TYPE_4__ sriov; } ;
struct mlx4_ib_demux_pv_qp {int tx_ix_head; int tx_ix_tail; TYPE_11__* tx_ring; int /*<<< orphan*/  tx_lock; struct ib_qp* qp; } ;
struct mlx4_ib_demux_pv_ctx {scalar_t__ state; TYPE_14__* pd; struct mlx4_ib_demux_pv_qp* qp; } ;
struct ib_wc {int src_qp; int wc_flags; int vlan_id; int slid; scalar_t__ sl; struct ib_mad* smac; int /*<<< orphan*/  pkey_index; } ;
struct TYPE_18__ {int wr_id; int num_sge; int /*<<< orphan*/  send_flags; int /*<<< orphan*/  opcode; struct ib_sge* sg_list; int /*<<< orphan*/ * next; } ;
struct ib_ud_wr {size_t port_num; int remote_qpn; TYPE_13__ wr; int /*<<< orphan*/  remote_qkey; struct ib_ah* ah; } ;
struct ib_sge {int length; int /*<<< orphan*/  lkey; int /*<<< orphan*/  addr; } ;
struct ib_send_wr {int dummy; } ;
struct ib_qp {int dummy; } ;
struct TYPE_28__ {struct ib_mad* raw; } ;
struct ib_mad {TYPE_9__ dgid; } ;
struct ib_grh {TYPE_9__ dgid; } ;
struct TYPE_26__ {char* raw; } ;
struct TYPE_27__ {TYPE_7__ dgid; } ;
struct ib_ah_attr {size_t port_num; int /*<<< orphan*/  ah_flags; TYPE_8__ grh; } ;
struct ib_ah {int dummy; } ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_25__ {int base_proxy_sqpn; } ;
struct TYPE_22__ {struct mlx4_ib_demux_pv_ctx** tun; } ;
struct TYPE_21__ {scalar_t__* port_type; } ;
struct TYPE_19__ {int /*<<< orphan*/  local_dma_lkey; } ;
struct TYPE_17__ {TYPE_6__ phys_caps; TYPE_2__ caps; } ;
struct TYPE_15__ {int /*<<< orphan*/  map; scalar_t__ addr; } ;
struct TYPE_16__ {struct ib_ah* ah; TYPE_10__ buf; } ;

/* Variables and functions */
 scalar_t__ DEMUX_PV_STATE_ACTIVE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  IB_AH_GRH ; 
 int IB_QPT_GSI ; 
 int /*<<< orphan*/  IB_QP_SET_QKEY ; 
 int /*<<< orphan*/  IB_SEND_SIGNALED ; 
 int IB_WC_GRH ; 
 int /*<<< orphan*/  IB_WR_SEND ; 
 scalar_t__ FUNC0 (struct ib_ah*) ; 
 int MLX4_NUM_TUNNEL_BUFS ; 
 scalar_t__ MLX4_PORT_TYPE_ETH ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct mlx4_ib_dev*,int,size_t,int,int*) ; 
 struct ib_ah* FUNC5 (TYPE_14__*,struct ib_ah_attr*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (struct ib_qp*,TYPE_13__*,struct ib_send_wr**) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct ib_mad*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ib_ah_attr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (TYPE_12__*,size_t,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct mlx4_ib_dev *dev, int slave, u8 port,
			  enum ib_qp_type dest_qpt, struct ib_wc *wc,
			  struct ib_grh *grh, struct ib_mad *mad)
{
	struct ib_sge list;
	struct ib_ud_wr wr;
	struct ib_send_wr *bad_wr;
	struct mlx4_ib_demux_pv_ctx *tun_ctx;
	struct mlx4_ib_demux_pv_qp *tun_qp;
	struct mlx4_rcv_tunnel_mad *tun_mad;
	struct ib_ah_attr attr;
	struct ib_ah *ah;
	struct ib_qp *src_qp = NULL;
	unsigned tun_tx_ix = 0;
	int dqpn;
	int ret = 0;
	u16 tun_pkey_ix;
	u16 cached_pkey;
	u8 is_eth = dev->dev->caps.port_type[port] == MLX4_PORT_TYPE_ETH;

	if (dest_qpt > IB_QPT_GSI)
		return -EINVAL;

	tun_ctx = dev->sriov.demux[port-1].tun[slave];

	/* check if proxy qp created */
	if (!tun_ctx || tun_ctx->state != DEMUX_PV_STATE_ACTIVE)
		return -EAGAIN;

	if (!dest_qpt)
		tun_qp = &tun_ctx->qp[0];
	else
		tun_qp = &tun_ctx->qp[1];

	/* compute P_Key index to put in tunnel header for slave */
	if (dest_qpt) {
		u16 pkey_ix;
		ret = FUNC9(&dev->ib_dev, port, wc->pkey_index, &cached_pkey);
		if (ret)
			return -EINVAL;

		ret = FUNC4(dev, slave, port, cached_pkey, &pkey_ix);
		if (ret)
			return -EINVAL;
		tun_pkey_ix = pkey_ix;
	} else
		tun_pkey_ix = dev->pkeys.virt2phys_pkey[slave][port - 1][0];

	dqpn = dev->dev->phys_caps.base_proxy_sqpn + 8 * slave + port + (dest_qpt * 2) - 1;

	/* get tunnel tx data buf for slave */
	src_qp = tun_qp->qp;

	/* create ah. Just need an empty one with the port num for the post send.
	 * The driver will set the force loopback bit in post_send */
	FUNC12(&attr, 0, sizeof attr);
	attr.port_num = port;
	if (is_eth) {
		FUNC11(&attr.grh.dgid.raw[0], &grh->dgid.raw[0], 16);
		attr.ah_flags = IB_AH_GRH;
	}
	ah = FUNC5(tun_ctx->pd, &attr);
	if (FUNC0(ah))
		return -ENOMEM;

	/* allocate tunnel tx buf after pass failure returns */
	FUNC14(&tun_qp->tx_lock);
	if (tun_qp->tx_ix_head - tun_qp->tx_ix_tail >=
	    (MLX4_NUM_TUNNEL_BUFS - 1))
		ret = -EAGAIN;
	else
		tun_tx_ix = (++tun_qp->tx_ix_head) & (MLX4_NUM_TUNNEL_BUFS - 1);
	FUNC15(&tun_qp->tx_lock);
	if (ret)
		goto end;

	tun_mad = (struct mlx4_rcv_tunnel_mad *) (tun_qp->tx_ring[tun_tx_ix].buf.addr);
	if (tun_qp->tx_ring[tun_tx_ix].ah)
		FUNC6(tun_qp->tx_ring[tun_tx_ix].ah);
	tun_qp->tx_ring[tun_tx_ix].ah = ah;
	FUNC7(&dev->ib_dev,
				   tun_qp->tx_ring[tun_tx_ix].buf.map,
				   sizeof (struct mlx4_rcv_tunnel_mad),
				   DMA_TO_DEVICE);

	/* copy over to tunnel buffer */
	if (grh)
		FUNC11(&tun_mad->grh, grh, sizeof *grh);
	FUNC11(&tun_mad->mad, mad, sizeof *mad);

	/* adjust tunnel data */
	tun_mad->hdr.pkey_index = FUNC2(tun_pkey_ix);
	tun_mad->hdr.flags_src_qp = FUNC3(wc->src_qp & 0xFFFFFF);
	tun_mad->hdr.g_ml_path = (grh && (wc->wc_flags & IB_WC_GRH)) ? 0x80 : 0;

	if (is_eth) {
		u16 vlan = 0;
		if (FUNC13(dev->dev, port, slave, &vlan,
						NULL)) {
			/* VST mode */
			if (vlan != wc->vlan_id) {
				/* Packet vlan is not the VST-assigned vlan.
				 * Drop the packet.
				 */
				ret = -EPERM;
				goto out;
			} else {
				/* Remove the vlan tag before forwarding
				 * the packet to the VF.
				 */
				vlan = 0xffff;
			}
		} else {
			vlan = wc->vlan_id;
		}

		tun_mad->hdr.sl_vid = FUNC2(vlan);
		FUNC11((char *)&tun_mad->hdr.mac_31_0, &(wc->smac[0]), 4);
		FUNC11((char *)&tun_mad->hdr.slid_mac_47_32, &(wc->smac[4]), 2);
	} else {
		tun_mad->hdr.sl_vid = FUNC2(((u16)(wc->sl)) << 12);
		tun_mad->hdr.slid_mac_47_32 = FUNC2(wc->slid);
	}

	FUNC8(&dev->ib_dev,
				      tun_qp->tx_ring[tun_tx_ix].buf.map,
				      sizeof (struct mlx4_rcv_tunnel_mad),
				      DMA_TO_DEVICE);

	list.addr = tun_qp->tx_ring[tun_tx_ix].buf.map;
	list.length = sizeof (struct mlx4_rcv_tunnel_mad);
	list.lkey = tun_ctx->pd->local_dma_lkey;

	wr.ah = ah;
	wr.port_num = port;
	wr.remote_qkey = IB_QP_SET_QKEY;
	wr.remote_qpn = dqpn;
	wr.wr.next = NULL;
	wr.wr.wr_id = ((u64) tun_tx_ix) | FUNC1(dest_qpt);
	wr.wr.sg_list = &list;
	wr.wr.num_sge = 1;
	wr.wr.opcode = IB_WR_SEND;
	wr.wr.send_flags = IB_SEND_SIGNALED;

	ret = FUNC10(src_qp, &wr.wr, &bad_wr);
	if (!ret)
		return 0;
 out:
	FUNC14(&tun_qp->tx_lock);
	tun_qp->tx_ix_tail++;
	FUNC15(&tun_qp->tx_lock);
	tun_qp->tx_ring[tun_tx_ix].ah = NULL;
end:
	FUNC6(ah);
	return ret;
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_17__ {int method; int mgmt_class; int tid; } ;
struct TYPE_21__ {TYPE_3__ mad_hdr; } ;
struct TYPE_19__ {int qkey; int remote_qpn; int pkey_index; int vlan; int * mac; int av; } ;
struct mlx4_tunnel_mad {TYPE_9__ mad; TYPE_5__ hdr; } ;
struct mlx4_ib_dev {TYPE_6__* dev; } ;
struct mlx4_ib_demux_pv_qp {TYPE_2__* ring; } ;
struct mlx4_ib_demux_pv_ctx {int port; int slave; int ib_dev; struct mlx4_ib_demux_pv_qp* qp; } ;
struct TYPE_13__ {int device; } ;
struct TYPE_18__ {int port_pd; } ;
struct TYPE_14__ {TYPE_4__ ib; } ;
struct mlx4_ib_ah {TYPE_10__ ibah; TYPE_12__ av; } ;
struct mlx4_av {int dummy; } ;
struct ib_wc {int wr_id; int src_qp; int smac; } ;
struct ib_sa_mad {int dummy; } ;
struct ib_mad {int dummy; } ;
struct ib_ah_attr {int ah_flags; int sl; TYPE_12__* dmac; } ;
struct TYPE_15__ {int base_proxy_sqpn; } ;
struct TYPE_20__ {TYPE_1__ phys_caps; } ;
struct TYPE_16__ {int map; struct mlx4_tunnel_mad* addr; } ;


 int DMA_FROM_DEVICE ;
 int IB_AH_GRH ;
 int IB_QPT_GSI ;
 int IB_QPT_SMI ;




 int MLX4_MFUNC_MAX ;
 int MLX4_NUM_TUNNEL_BUFS ;
 size_t MLX4_TUN_WRID_QPN (int) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int fill_in_real_sgid_index (struct mlx4_ib_dev*,int,int,struct ib_ah_attr*) ;
 int ib_dma_sync_single_for_cpu (int ,int ,int,int ) ;
 scalar_t__ is_proxy_qp0 (struct mlx4_ib_dev*,int,int) ;
 int memcpy (TYPE_12__*,int *,int) ;
 int mlx4_get_slave_default_vlan (TYPE_6__*,int,int,int *,int *) ;
 int mlx4_ib_multiplex_cm_handler (int ,int,int,struct ib_mad*) ;
 int mlx4_ib_multiplex_sa_handler (int ,int,int,struct ib_sa_mad*) ;
 int mlx4_ib_query_ah (TYPE_10__*,struct ib_ah_attr*) ;
 int mlx4_ib_send_to_wire (struct mlx4_ib_dev*,int,int,int ,int ,int,int,struct ib_ah_attr*,int ,int ,TYPE_9__*) ;
 int mlx4_ib_warn (int ,char*,int,...) ;
 int mlx4_master_func_num (TYPE_6__*) ;
 int mlx4_slave_convert_port (TYPE_6__*,int,int) ;
 int mlx4_vf_smi_enabled (TYPE_6__*,int,int) ;
 struct mlx4_ib_dev* to_mdev (int ) ;

__attribute__((used)) static void mlx4_ib_multiplex_mad(struct mlx4_ib_demux_pv_ctx *ctx, struct ib_wc *wc)
{
 struct mlx4_ib_dev *dev = to_mdev(ctx->ib_dev);
 struct mlx4_ib_demux_pv_qp *tun_qp = &ctx->qp[MLX4_TUN_WRID_QPN(wc->wr_id)];
 int wr_ix = wc->wr_id & (MLX4_NUM_TUNNEL_BUFS - 1);
 struct mlx4_tunnel_mad *tunnel = tun_qp->ring[wr_ix].addr;
 struct mlx4_ib_ah ah;
 struct ib_ah_attr ah_attr;
 u8 *slave_id;
 int slave;
 int port;
 u16 vlan_id;


 if (wc->src_qp < dev->dev->phys_caps.base_proxy_sqpn ||
     wc->src_qp >= dev->dev->phys_caps.base_proxy_sqpn + 8 * MLX4_MFUNC_MAX ||
     (wc->src_qp & 0x1) != ctx->port - 1 ||
     wc->src_qp & 0x4) {
  mlx4_ib_warn(ctx->ib_dev, "can't multiplex bad sqp:%d\n", wc->src_qp);
  return;
 }
 slave = ((wc->src_qp & ~0x7) - dev->dev->phys_caps.base_proxy_sqpn) / 8;
 if (slave != ctx->slave) {
  mlx4_ib_warn(ctx->ib_dev, "can't multiplex bad sqp:%d: "
        "belongs to another slave\n", wc->src_qp);
  return;
 }


 ib_dma_sync_single_for_cpu(ctx->ib_dev, tun_qp->ring[wr_ix].map,
       sizeof (struct mlx4_tunnel_mad),
       DMA_FROM_DEVICE);
 switch (tunnel->mad.mad_hdr.method) {
 case 132:
 case 134:
 case 133:
 case 129:
 case 131:
 case 130:
 case 128:
  slave_id = (u8 *) &tunnel->mad.mad_hdr.tid;
  if (*slave_id) {
   mlx4_ib_warn(ctx->ib_dev, "egress mad has non-null tid msb:%d "
         "class:%d slave:%d\n", *slave_id,
         tunnel->mad.mad_hdr.mgmt_class, slave);
   return;
  } else
   *slave_id = slave;
 default:
               ;
 }


 switch (tunnel->mad.mad_hdr.mgmt_class) {
 case 135:
 case 136:
  if (slave != mlx4_master_func_num(dev->dev) &&
      !mlx4_vf_smi_enabled(dev->dev, slave, ctx->port))
   return;
  break;
 case 137:
  if (mlx4_ib_multiplex_sa_handler(ctx->ib_dev, ctx->port, slave,
         (struct ib_sa_mad *) &tunnel->mad))
   return;
  break;
 case 139:
  if (mlx4_ib_multiplex_cm_handler(ctx->ib_dev, ctx->port, slave,
         (struct ib_mad *) &tunnel->mad))
   return;
  break;
 case 138:
  if (tunnel->mad.mad_hdr.method != 134 &&
      tunnel->mad.mad_hdr.method != 132)
   return;
  break;
 default:

  if (slave != mlx4_master_func_num(dev->dev)) {
   mlx4_ib_warn(ctx->ib_dev, "dropping unsupported egress mad from class:%d "
         "for slave:%d\n", tunnel->mad.mad_hdr.mgmt_class, slave);
   return;
  }
 }



 memcpy(&ah.av, &tunnel->hdr.av, sizeof (struct mlx4_av));
 ah.ibah.device = ctx->ib_dev;

 port = be32_to_cpu(ah.av.ib.port_pd) >> 24;
 port = mlx4_slave_convert_port(dev->dev, slave, port);
 if (port < 0)
  return;
 ah.av.ib.port_pd = cpu_to_be32(port << 24 | (be32_to_cpu(ah.av.ib.port_pd) & 0xffffff));

 mlx4_ib_query_ah(&ah.ibah, &ah_attr);
 if (ah_attr.ah_flags & IB_AH_GRH)
  fill_in_real_sgid_index(dev, slave, ctx->port, &ah_attr);

 memcpy(ah_attr.dmac, tunnel->hdr.mac, 6);
 vlan_id = be16_to_cpu(tunnel->hdr.vlan);

 mlx4_get_slave_default_vlan(dev->dev, ctx->port, slave,
        &vlan_id, &ah_attr.sl);

 mlx4_ib_send_to_wire(dev, slave, ctx->port,
        is_proxy_qp0(dev, wc->src_qp, slave) ?
        IB_QPT_SMI : IB_QPT_GSI,
        be16_to_cpu(tunnel->hdr.pkey_index),
        be32_to_cpu(tunnel->hdr.remote_qpn),
        be32_to_cpu(tunnel->hdr.qkey),
        &ah_attr, wc->smac, vlan_id, &tunnel->mad);
}

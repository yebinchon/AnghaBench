
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rdma_dev_addr {int dummy; } ;
struct TYPE_8__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_9__ {TYPE_1__ addr; } ;
struct TYPE_10__ {scalar_t__ ps; int port_num; TYPE_5__* device; TYPE_2__ route; } ;
struct rdma_id_private {TYPE_3__ id; int qkey; } ;
struct ib_sa_mcmember_rec {scalar_t__ join_state; int pkey; int port_gid; int qkey; int mgid; } ;
struct ib_class_port_info {int dummy; } ;
struct TYPE_11__ {int ib; } ;
struct cma_multicast {scalar_t__ join_state; TYPE_4__ multicast; int addr; } ;
typedef int ib_sa_comp_mask ;
struct TYPE_12__ {int name; } ;


 scalar_t__ BIT (int ) ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IB_SA_CAP_MASK2_SENDONLY_FULL_MEM_SUPPORT ;
 int IB_SA_MCMEMBER_REC_FLOW_LABEL ;
 int IB_SA_MCMEMBER_REC_HOP_LIMIT ;
 int IB_SA_MCMEMBER_REC_JOIN_STATE ;
 int IB_SA_MCMEMBER_REC_MGID ;
 int IB_SA_MCMEMBER_REC_MTU ;
 int IB_SA_MCMEMBER_REC_MTU_SELECTOR ;
 int IB_SA_MCMEMBER_REC_PKEY ;
 int IB_SA_MCMEMBER_REC_PORT_GID ;
 int IB_SA_MCMEMBER_REC_QKEY ;
 int IB_SA_MCMEMBER_REC_RATE ;
 int IB_SA_MCMEMBER_REC_RATE_SELECTOR ;
 int IB_SA_MCMEMBER_REC_SL ;
 int IB_SA_MCMEMBER_REC_TRAFFIC_CLASS ;
 int PTR_ERR_OR_ZERO (int ) ;
 scalar_t__ RDMA_PS_IPOIB ;
 int SENDONLY_FULLMEMBER_JOIN ;
 int cma_ib_mc_handler ;
 int cma_query_sa_classport_info (TYPE_5__*,int ,struct ib_class_port_info*) ;
 int cma_set_mgid (struct rdma_id_private*,struct sockaddr*,int *) ;
 int cma_set_qkey (struct rdma_id_private*,int ) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int ib_addr_get_mgid (struct rdma_dev_addr*,int *) ;
 int ib_addr_get_pkey (struct rdma_dev_addr*) ;
 int ib_get_cpi_capmask2 (struct ib_class_port_info*) ;
 int ib_sa_get_mcmember_rec (TYPE_5__*,int ,int *,struct ib_sa_mcmember_rec*) ;
 int ib_sa_join_multicast (int *,TYPE_5__*,int ,struct ib_sa_mcmember_rec*,int,int ,int ,struct cma_multicast*) ;
 int pr_warn (char*,int ,int ) ;
 int rdma_addr_get_sgid (struct rdma_dev_addr*,int *) ;
 int sa_client ;

__attribute__((used)) static int cma_join_ib_multicast(struct rdma_id_private *id_priv,
     struct cma_multicast *mc)
{
 struct ib_sa_mcmember_rec rec;
 struct ib_class_port_info class_port_info;
 struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
 ib_sa_comp_mask comp_mask;
 int ret;

 ib_addr_get_mgid(dev_addr, &rec.mgid);
 ret = ib_sa_get_mcmember_rec(id_priv->id.device, id_priv->id.port_num,
         &rec.mgid, &rec);
 if (ret)
  return ret;

 ret = cma_set_qkey(id_priv, 0);
 if (ret)
  return ret;

 cma_set_mgid(id_priv, (struct sockaddr *) &mc->addr, &rec.mgid);
 rec.qkey = cpu_to_be32(id_priv->qkey);
 rdma_addr_get_sgid(dev_addr, &rec.port_gid);
 rec.pkey = cpu_to_be16(ib_addr_get_pkey(dev_addr));
 rec.join_state = mc->join_state;

 if (rec.join_state == BIT(SENDONLY_FULLMEMBER_JOIN)) {
  ret = cma_query_sa_classport_info(id_priv->id.device,
        id_priv->id.port_num,
        &class_port_info);

  if (ret)
   return ret;

  if (!(ib_get_cpi_capmask2(&class_port_info) &
        IB_SA_CAP_MASK2_SENDONLY_FULL_MEM_SUPPORT)) {
   pr_warn("RDMA CM: %s port %u Unable to multicast join\n"
    "RDMA CM: SM doesn't support Send Only Full Member option\n",
    id_priv->id.device->name, id_priv->id.port_num);
   return -EOPNOTSUPP;
  }
 }

 comp_mask = IB_SA_MCMEMBER_REC_MGID | IB_SA_MCMEMBER_REC_PORT_GID |
      IB_SA_MCMEMBER_REC_PKEY | IB_SA_MCMEMBER_REC_JOIN_STATE |
      IB_SA_MCMEMBER_REC_QKEY | IB_SA_MCMEMBER_REC_SL |
      IB_SA_MCMEMBER_REC_FLOW_LABEL |
      IB_SA_MCMEMBER_REC_TRAFFIC_CLASS;

 if (id_priv->id.ps == RDMA_PS_IPOIB)
  comp_mask |= IB_SA_MCMEMBER_REC_RATE |
        IB_SA_MCMEMBER_REC_RATE_SELECTOR |
        IB_SA_MCMEMBER_REC_MTU_SELECTOR |
        IB_SA_MCMEMBER_REC_MTU |
        IB_SA_MCMEMBER_REC_HOP_LIMIT;

 mc->multicast.ib = ib_sa_join_multicast(&sa_client, id_priv->id.device,
      id_priv->id.port_num, &rec,
      comp_mask, GFP_KERNEL,
      cma_ib_mc_handler, mc);
 return PTR_ERR_OR_ZERO(mc->multicast.ib);
}

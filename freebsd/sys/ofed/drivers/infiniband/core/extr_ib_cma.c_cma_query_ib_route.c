
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct sockaddr_in6 {int sin6_flowinfo; } ;
struct sockaddr_ib {int sib_flowinfo; } ;
struct rdma_dev_addr {int dummy; } ;
struct TYPE_4__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {int port_num; int device; TYPE_2__ route; } ;
struct rdma_id_private {scalar_t__ query_id; int query; TYPE_3__ id; int tos; } ;
struct ib_sa_path_rec {int numb_path; int reversible; void* traffic_class; void* qos_class; int service_id; void* pkey; int dgid; int sgid; } ;
struct cma_work {int dummy; } ;
typedef int ib_sa_comp_mask ;





 int GFP_KERNEL ;
 int IB_SA_PATH_REC_DGID ;
 int IB_SA_PATH_REC_NUMB_PATH ;
 int IB_SA_PATH_REC_PKEY ;
 int IB_SA_PATH_REC_QOS_CLASS ;
 int IB_SA_PATH_REC_REVERSIBLE ;
 int IB_SA_PATH_REC_SERVICE_ID ;
 int IB_SA_PATH_REC_SGID ;
 int IB_SA_PATH_REC_TRAFFIC_CLASS ;
 int be32_to_cpu (int ) ;
 int cma_dst_addr (struct rdma_id_private*) ;
 int cma_family (struct rdma_id_private*) ;
 int cma_query_handler ;
 scalar_t__ cma_src_addr (struct rdma_id_private*) ;
 void* cpu_to_be16 (int ) ;
 int ib_addr_get_pkey (struct rdma_dev_addr*) ;
 scalar_t__ ib_sa_path_rec_get (int *,int ,int ,struct ib_sa_path_rec*,int,int,int ,int ,struct cma_work*,int *) ;
 int memset (struct ib_sa_path_rec*,int ,int) ;
 int rdma_addr_get_dgid (struct rdma_dev_addr*,int *) ;
 int rdma_addr_get_sgid (struct rdma_dev_addr*,int *) ;
 int rdma_get_service_id (TYPE_3__*,int ) ;
 int sa_client ;

__attribute__((used)) static int cma_query_ib_route(struct rdma_id_private *id_priv, int timeout_ms,
         struct cma_work *work)
{
 struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
 struct ib_sa_path_rec path_rec;
 ib_sa_comp_mask comp_mask;
 struct sockaddr_in6 *sin6;
 struct sockaddr_ib *sib;

 memset(&path_rec, 0, sizeof path_rec);
 rdma_addr_get_sgid(dev_addr, &path_rec.sgid);
 rdma_addr_get_dgid(dev_addr, &path_rec.dgid);
 path_rec.pkey = cpu_to_be16(ib_addr_get_pkey(dev_addr));
 path_rec.numb_path = 1;
 path_rec.reversible = 1;
 path_rec.service_id = rdma_get_service_id(&id_priv->id, cma_dst_addr(id_priv));

 comp_mask = IB_SA_PATH_REC_DGID | IB_SA_PATH_REC_SGID |
      IB_SA_PATH_REC_PKEY | IB_SA_PATH_REC_NUMB_PATH |
      IB_SA_PATH_REC_REVERSIBLE | IB_SA_PATH_REC_SERVICE_ID;

 switch (cma_family(id_priv)) {
 case 129:
  path_rec.qos_class = cpu_to_be16((u16) id_priv->tos);
  comp_mask |= IB_SA_PATH_REC_QOS_CLASS;
  break;
 case 128:
  sin6 = (struct sockaddr_in6 *) cma_src_addr(id_priv);
  path_rec.traffic_class = (u8) (be32_to_cpu(sin6->sin6_flowinfo) >> 20);
  comp_mask |= IB_SA_PATH_REC_TRAFFIC_CLASS;
  break;
 case 130:
  sib = (struct sockaddr_ib *) cma_src_addr(id_priv);
  path_rec.traffic_class = (u8) (be32_to_cpu(sib->sib_flowinfo) >> 20);
  comp_mask |= IB_SA_PATH_REC_TRAFFIC_CLASS;
  break;
 }

 id_priv->query_id = ib_sa_path_rec_get(&sa_client, id_priv->id.device,
            id_priv->id.port_num, &path_rec,
            comp_mask, timeout_ms,
            GFP_KERNEL, cma_query_handler,
            work, &id_priv->query);

 return (id_priv->query_id < 0) ? id_priv->query_id : 0;
}

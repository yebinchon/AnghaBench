
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ps; } ;
struct rdma_id_private {TYPE_1__ id; } ;
struct cma_hdr {int dummy; } ;


 scalar_t__ AF_IB ;
 scalar_t__ RDMA_PS_SDP ;
 scalar_t__ cma_family (struct rdma_id_private*) ;

__attribute__((used)) static inline int cma_user_data_offset(struct rdma_id_private *id_priv)
{
 if (cma_family(id_priv) == AF_IB)
  return 0;
 if (id_priv->id.ps == RDMA_PS_SDP)
  return 0;
 return sizeof(struct cma_hdr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mthca_qp {int atomic_rd_en; int resp_depth; } ;
struct ib_qp_attr {int qp_access_flags; int max_dest_rd_atomic; } ;
typedef int __be32 ;


 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_MAX_DEST_RD_ATOMIC ;
 int MTHCA_QP_BIT_RAE ;
 int MTHCA_QP_BIT_RRE ;
 int MTHCA_QP_BIT_RWE ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static __be32 get_hw_access_flags(struct mthca_qp *qp, const struct ib_qp_attr *attr,
      int attr_mask)
{
 u8 dest_rd_atomic;
 u32 access_flags;
 u32 hw_access_flags = 0;

 if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC)
  dest_rd_atomic = attr->max_dest_rd_atomic;
 else
  dest_rd_atomic = qp->resp_depth;

 if (attr_mask & IB_QP_ACCESS_FLAGS)
  access_flags = attr->qp_access_flags;
 else
  access_flags = qp->atomic_rd_en;

 if (!dest_rd_atomic)
  access_flags &= IB_ACCESS_REMOTE_WRITE;

 if (access_flags & IB_ACCESS_REMOTE_READ)
  hw_access_flags |= MTHCA_QP_BIT_RRE;
 if (access_flags & IB_ACCESS_REMOTE_ATOMIC)
  hw_access_flags |= MTHCA_QP_BIT_RAE;
 if (access_flags & IB_ACCESS_REMOTE_WRITE)
  hw_access_flags |= MTHCA_QP_BIT_RWE;

 return cpu_to_be32(hw_access_flags);
}

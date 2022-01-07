
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_iwarp_info {scalar_t__ mpa_intermediate_buf; scalar_t__ mpa_bufs; scalar_t__ partial_fpdus; int qp_lock; int iw_lock; } ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; int p_dev; } ;
struct TYPE_2__ {int tcp_cid_map; struct ecore_iwarp_info iwarp; } ;


 int OSAL_FREE (int ,scalar_t__) ;
 int OSAL_SPIN_LOCK_DEALLOC (int ) ;
 int ecore_ooo_free (struct ecore_hwfn*) ;
 int ecore_rdma_bmap_free (struct ecore_hwfn*,int *,int) ;

void
ecore_iwarp_resc_free(struct ecore_hwfn *p_hwfn)
{
 struct ecore_iwarp_info *iwarp_info = &p_hwfn->p_rdma_info->iwarp;





 ecore_ooo_free(p_hwfn);
 if (iwarp_info->partial_fpdus)
  OSAL_FREE(p_hwfn->p_dev, iwarp_info->partial_fpdus);
 if (iwarp_info->mpa_bufs)
  OSAL_FREE(p_hwfn->p_dev, iwarp_info->mpa_bufs);
 if (iwarp_info->mpa_intermediate_buf)
  OSAL_FREE(p_hwfn->p_dev, iwarp_info->mpa_intermediate_buf);

 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->tcp_cid_map, 1);
}

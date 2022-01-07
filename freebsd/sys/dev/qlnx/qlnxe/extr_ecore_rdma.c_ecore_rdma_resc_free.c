
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_rdma_info; int p_dev; } ;
struct TYPE_2__ {void* dev; void* port; int xrc_srq_map; int srq_map; int tid_map; int toggle_bits; int cq_map; int dpi_map; int xrcd_map; int pd_map; int qp_map; int cid_map; } ;


 scalar_t__ IS_IWARP (struct ecore_hwfn*) ;
 int OSAL_FREE (int ,void*) ;
 void* OSAL_NULL ;
 int ecore_iwarp_resc_free (struct ecore_hwfn*) ;
 int ecore_rdma_bmap_free (struct ecore_hwfn*,int *,int) ;

void ecore_rdma_resc_free(struct ecore_hwfn *p_hwfn)
{
 if (IS_IWARP(p_hwfn))
  ecore_iwarp_resc_free(p_hwfn);

 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->cid_map, 1);
 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->qp_map, 1);
 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->pd_map, 1);
 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->xrcd_map, 1);
 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->dpi_map, 1);
 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->cq_map, 1);
 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->toggle_bits, 0);
 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->tid_map, 1);
 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->srq_map, 1);
 ecore_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->xrc_srq_map, 1);

 OSAL_FREE(p_hwfn->p_dev, p_hwfn->p_rdma_info->port);
 p_hwfn->p_rdma_info->port = OSAL_NULL;

 OSAL_FREE(p_hwfn->p_dev, p_hwfn->p_rdma_info->dev);
 p_hwfn->p_rdma_info->dev = OSAL_NULL;
}

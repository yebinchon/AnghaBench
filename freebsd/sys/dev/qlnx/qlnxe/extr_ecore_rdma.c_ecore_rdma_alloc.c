
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
struct ecore_rdma_info {int num_qps; int num_mrs; int srq_id_offset; int num_srqs; int srq_map; int xrc_srq_map; int cid_map; int qp_map; int tid_map; int toggle_bits; int cq_map; int dpi_map; int xrcd_map; int pd_map; void* port; void* dev; void* max_queue_zones; void* queue_zone_base; int proto; } ;
struct TYPE_2__ {scalar_t__ personality; } ;
struct ecore_hwfn {int dpi_count; int p_dev; TYPE_1__ hw_info; struct ecore_rdma_info* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_INVAL ;
 int ECORE_L2_QUEUE ;
 int ECORE_MSG_RDMA ;
 int ECORE_NOMEM ;
 scalar_t__ ECORE_PCI_ETH_IWARP ;
 int ECORE_RDMA_MAX_XRCDS ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 scalar_t__ IS_IWARP (struct ecore_hwfn*) ;
 int OSAL_NULL ;
 void* OSAL_ZALLOC (int ,int ,int) ;
 int PROTOCOLID_IWARP ;
 int PROTOCOLID_ROCE ;
 int RDMA_MAX_PDS ;
 scalar_t__ RESC_NUM (struct ecore_hwfn*,int ) ;
 scalar_t__ RESC_START (struct ecore_hwfn*,int ) ;
 int ecore_cxt_get_proto_cid_count (struct ecore_hwfn*,int ,int ) ;
 int ecore_cxt_get_proto_tid_count (struct ecore_hwfn*,int ) ;
 int ecore_cxt_get_srq_count (struct ecore_hwfn*) ;
 scalar_t__ ecore_cxt_get_xrc_srq_count (struct ecore_hwfn*) ;
 int ecore_iwarp_alloc (struct ecore_hwfn*) ;
 int ecore_rdma_bmap_alloc (struct ecore_hwfn*,int *,int,char*) ;

__attribute__((used)) static enum _ecore_status_t ecore_rdma_alloc(struct ecore_hwfn *p_hwfn)
{
 struct ecore_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;
 u32 num_cons, num_tasks;
 enum _ecore_status_t rc;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Allocating RDMA\n");

 if (!p_rdma_info)
  return ECORE_INVAL;

 if (p_hwfn->hw_info.personality == ECORE_PCI_ETH_IWARP)
  p_rdma_info->proto = PROTOCOLID_IWARP;
 else
  p_rdma_info->proto = PROTOCOLID_ROCE;

 num_cons = ecore_cxt_get_proto_cid_count(p_hwfn, p_rdma_info->proto,
       OSAL_NULL);

 if (IS_IWARP(p_hwfn))
  p_rdma_info->num_qps = num_cons;
 else
  p_rdma_info->num_qps = num_cons / 2;


 num_tasks = ecore_cxt_get_proto_tid_count(p_hwfn, PROTOCOLID_ROCE);


 p_rdma_info->num_mrs = num_tasks;




 p_rdma_info->queue_zone_base = (u16) RESC_START(p_hwfn, ECORE_L2_QUEUE);
 p_rdma_info->max_queue_zones = (u16) RESC_NUM(p_hwfn, ECORE_L2_QUEUE);


 p_rdma_info->dev = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_rdma_info->dev));
 if (!p_rdma_info->dev)
 {
  rc = ECORE_NOMEM;
  DP_NOTICE(p_hwfn, 0,
     "ecore rdma alloc failed: cannot allocate memory (rdma info dev). rc = %d\n",
     rc);
  return rc;
 }


 p_rdma_info->port = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_rdma_info->port));
 if (!p_rdma_info->port)
 {
  DP_NOTICE(p_hwfn, 0,
     "ecore rdma alloc failed: cannot allocate memory (rdma info port)\n");
  return ECORE_NOMEM;
 }


 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->pd_map, RDMA_MAX_PDS,
       "PD");
 if (rc != ECORE_SUCCESS)
 {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate pd_map,rc = %d\n",
      rc);
  return rc;
 }


 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->xrcd_map,
       ECORE_RDMA_MAX_XRCDS, "XRCD");
 if (rc != ECORE_SUCCESS)
 {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate xrcd_map,rc = %d\n",
      rc);
  return rc;
 }


 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->dpi_map,
       p_hwfn->dpi_count, "DPI");
 if (rc != ECORE_SUCCESS)
 {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate DPI bitmap, rc = %d\n", rc);
  return rc;
 }




 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->cq_map,
       num_cons, "CQ");
 if (rc != ECORE_SUCCESS)
 {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate cq bitmap, rc = %d\n", rc);
  return rc;
 }






 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->toggle_bits,
       num_cons, "Toggle");
 if (rc != ECORE_SUCCESS)
 {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate toogle bits, rc = %d\n", rc);
  return rc;
 }


 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->tid_map,
       p_rdma_info->num_mrs, "MR");
 if (rc != ECORE_SUCCESS)
 {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate itids bitmaps, rc = %d\n", rc);
  return rc;
 }


 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->qp_map,
       p_rdma_info->num_qps, "QP");
 if (rc != ECORE_SUCCESS)
 {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate qp bitmap, rc = %d\n", rc);
  return rc;
 }


 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->cid_map, num_cons,
       "REAL CID");
 if (rc != ECORE_SUCCESS)
 {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate cid bitmap, rc = %d\n", rc);
  return rc;
 }




 p_rdma_info->srq_id_offset = (u16)ecore_cxt_get_xrc_srq_count(p_hwfn);
 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->xrc_srq_map,
       p_rdma_info->srq_id_offset, "XRC SRQ");
 if (rc != ECORE_SUCCESS) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate xrc srq bitmap, rc = %d\n", rc);
  return rc;
 }


 p_rdma_info->num_srqs = ecore_cxt_get_srq_count(p_hwfn);
 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_rdma_info->srq_map,
       p_rdma_info->num_srqs,
       "SRQ");
 if (rc != ECORE_SUCCESS) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate srq bitmap, rc = %d\n", rc);

  return rc;
 }

 if (IS_IWARP(p_hwfn))
  rc = ecore_iwarp_alloc(p_hwfn);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "rc = %d\n", rc);

 return rc;
}

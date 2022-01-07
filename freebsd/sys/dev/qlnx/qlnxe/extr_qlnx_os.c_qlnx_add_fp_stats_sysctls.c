
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {int num_rss; TYPE_1__* fp_array; int pci_dev; } ;
typedef TYPE_2__ qlnx_host_t ;
typedef int name_str ;
struct TYPE_4__ {int err_rx_alloc_errors; int err_rx_hw_errors; int err_m_getjcl; int err_m_getcl; int tpa_end; int tpa_cont; int tpa_start; int rx_pkts; int lro_cnt_1024; int lro_cnt_512; int lro_cnt_256; int lro_cnt_128; int lro_cnt_64; int err_tx_cons_idx_conflict; int err_tx_free_pkt_null; int err_tx_defrag; int err_tx_dmamap_load; int err_tx_non_tso_max_seg; int err_tx_defrag_dmamap_load; int err_tx_dmamap_create; int err_tx_nsegs_gt_elem_left; int * tx_pkts_q; int * tx_comInt; int * tx_pkts_hist; int * tx_pkts; int tx_tso_min_pkt_len; int tx_tso_max_pkt_len; int tx_tso_min_nsegs; int tx_tso_max_nsegs; int tx_nsegs_gt_elem_left; int tx_defrag; int tx_lso_wnd_min_len; int tx_tso_pkts; int tx_pkts_compl_intr; int tx_pkts_compl_fp; int tx_pkts_trans_fp; int tx_pkts_compl_ctx; int tx_pkts_trans_ctx; int tx_non_tso_pkts; int tx_pkts_completed; int tx_pkts_transmitted; int tx_pkts_freed; int tx_pkts_processed; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int QLNX_FP_MAX_SEGS ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int bzero (char*,int) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
qlnx_add_fp_stats_sysctls(qlnx_host_t *ha)
{
        struct sysctl_ctx_list *ctx;
        struct sysctl_oid_list *children;
        struct sysctl_oid_list *node_children;
 struct sysctl_oid *ctx_oid;
 int i, j;
 uint8_t name_str[16];

        ctx = device_get_sysctl_ctx(ha->pci_dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(ha->pci_dev));

 ctx_oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "fpstat",
   CTLFLAG_RD, ((void*)0), "fpstat");
 children = SYSCTL_CHILDREN(ctx_oid);

 for (i = 0; i < ha->num_rss; i++) {

  bzero(name_str, (sizeof(uint8_t) * sizeof(name_str)));
  snprintf(name_str, sizeof(name_str), "%d", i);

  ctx_oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, name_str,
   CTLFLAG_RD, ((void*)0), name_str);
  node_children = SYSCTL_CHILDREN(ctx_oid);



  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tx_pkts_processed",
   CTLFLAG_RD, &ha->fp_array[i].tx_pkts_processed,
   "No. of packets processed for transmission");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tx_pkts_freed",
   CTLFLAG_RD, &ha->fp_array[i].tx_pkts_freed,
   "No. of freed packets");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tx_pkts_transmitted",
   CTLFLAG_RD, &ha->fp_array[i].tx_pkts_transmitted,
   "No. of transmitted packets");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tx_pkts_completed",
   CTLFLAG_RD, &ha->fp_array[i].tx_pkts_completed,
   "No. of transmit completions");

                SYSCTL_ADD_QUAD(ctx, node_children,
                        OID_AUTO, "tx_non_tso_pkts",
                        CTLFLAG_RD, &ha->fp_array[i].tx_non_tso_pkts,
                        "No. of non LSO transmited packets");
                SYSCTL_ADD_QUAD(ctx, node_children,
                        OID_AUTO, "tx_tso_pkts",
                        CTLFLAG_RD, &ha->fp_array[i].tx_tso_pkts,
                        "No. of LSO transmited packets");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tx_lso_wnd_min_len",
   CTLFLAG_RD, &ha->fp_array[i].tx_lso_wnd_min_len,
   "tx_lso_wnd_min_len");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tx_defrag",
   CTLFLAG_RD, &ha->fp_array[i].tx_defrag,
   "tx_defrag");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tx_nsegs_gt_elem_left",
   CTLFLAG_RD, &ha->fp_array[i].tx_nsegs_gt_elem_left,
   "tx_nsegs_gt_elem_left");

  SYSCTL_ADD_UINT(ctx, node_children,
   OID_AUTO, "tx_tso_max_nsegs",
   CTLFLAG_RD, &ha->fp_array[i].tx_tso_max_nsegs,
   ha->fp_array[i].tx_tso_max_nsegs, "tx_tso_max_nsegs");

  SYSCTL_ADD_UINT(ctx, node_children,
   OID_AUTO, "tx_tso_min_nsegs",
   CTLFLAG_RD, &ha->fp_array[i].tx_tso_min_nsegs,
   ha->fp_array[i].tx_tso_min_nsegs, "tx_tso_min_nsegs");

  SYSCTL_ADD_UINT(ctx, node_children,
   OID_AUTO, "tx_tso_max_pkt_len",
   CTLFLAG_RD, &ha->fp_array[i].tx_tso_max_pkt_len,
   ha->fp_array[i].tx_tso_max_pkt_len,
   "tx_tso_max_pkt_len");

  SYSCTL_ADD_UINT(ctx, node_children,
   OID_AUTO, "tx_tso_min_pkt_len",
   CTLFLAG_RD, &ha->fp_array[i].tx_tso_min_pkt_len,
   ha->fp_array[i].tx_tso_min_pkt_len,
   "tx_tso_min_pkt_len");

  for (j = 0; j < QLNX_FP_MAX_SEGS; j++) {

   bzero(name_str, (sizeof(uint8_t) * sizeof(name_str)));
   snprintf(name_str, sizeof(name_str),
    "tx_pkts_nseg_%02d", (j+1));

   SYSCTL_ADD_QUAD(ctx, node_children,
    OID_AUTO, name_str, CTLFLAG_RD,
    &ha->fp_array[i].tx_pkts[j], name_str);
  }
  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_tx_nsegs_gt_elem_left",
   CTLFLAG_RD, &ha->fp_array[i].err_tx_nsegs_gt_elem_left,
   "err_tx_nsegs_gt_elem_left");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_tx_dmamap_create",
   CTLFLAG_RD, &ha->fp_array[i].err_tx_dmamap_create,
   "err_tx_dmamap_create");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_tx_defrag_dmamap_load",
   CTLFLAG_RD, &ha->fp_array[i].err_tx_defrag_dmamap_load,
   "err_tx_defrag_dmamap_load");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_tx_non_tso_max_seg",
   CTLFLAG_RD, &ha->fp_array[i].err_tx_non_tso_max_seg,
   "err_tx_non_tso_max_seg");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_tx_dmamap_load",
   CTLFLAG_RD, &ha->fp_array[i].err_tx_dmamap_load,
   "err_tx_dmamap_load");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_tx_defrag",
   CTLFLAG_RD, &ha->fp_array[i].err_tx_defrag,
   "err_tx_defrag");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_tx_free_pkt_null",
   CTLFLAG_RD, &ha->fp_array[i].err_tx_free_pkt_null,
   "err_tx_free_pkt_null");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_tx_cons_idx_conflict",
   CTLFLAG_RD, &ha->fp_array[i].err_tx_cons_idx_conflict,
   "err_tx_cons_idx_conflict");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "lro_cnt_64",
   CTLFLAG_RD, &ha->fp_array[i].lro_cnt_64,
   "lro_cnt_64");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "lro_cnt_128",
   CTLFLAG_RD, &ha->fp_array[i].lro_cnt_128,
   "lro_cnt_128");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "lro_cnt_256",
   CTLFLAG_RD, &ha->fp_array[i].lro_cnt_256,
   "lro_cnt_256");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "lro_cnt_512",
   CTLFLAG_RD, &ha->fp_array[i].lro_cnt_512,
   "lro_cnt_512");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "lro_cnt_1024",
   CTLFLAG_RD, &ha->fp_array[i].lro_cnt_1024,
   "lro_cnt_1024");



  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "rx_pkts",
   CTLFLAG_RD, &ha->fp_array[i].rx_pkts,
   "No. of received packets");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tpa_start",
   CTLFLAG_RD, &ha->fp_array[i].tpa_start,
   "No. of tpa_start packets");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tpa_cont",
   CTLFLAG_RD, &ha->fp_array[i].tpa_cont,
   "No. of tpa_cont packets");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "tpa_end",
   CTLFLAG_RD, &ha->fp_array[i].tpa_end,
   "No. of tpa_end packets");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_m_getcl",
   CTLFLAG_RD, &ha->fp_array[i].err_m_getcl,
   "err_m_getcl");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_m_getjcl",
   CTLFLAG_RD, &ha->fp_array[i].err_m_getjcl,
   "err_m_getjcl");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_rx_hw_errors",
   CTLFLAG_RD, &ha->fp_array[i].err_rx_hw_errors,
   "err_rx_hw_errors");

  SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "err_rx_alloc_errors",
   CTLFLAG_RD, &ha->fp_array[i].err_rx_alloc_errors,
   "err_rx_alloc_errors");
 }

 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_VENDOR_INTEL ;
 int FW_CAPS_CONFIG_ISCSI_INITIATOR_PDU ;
 int FW_CAPS_CONFIG_ISCSI_T10DIF ;
 int FW_CAPS_CONFIG_ISCSI_TARGET_PDU ;
 int FW_CAPS_CONFIG_RDMA_RDDP ;
 int FW_CAPS_CONFIG_RDMA_RDMAC ;
 int FW_CAPS_CONFIG_TOE ;
 int INTR_INTX ;
 int INTR_MSI ;
 int INTR_MSIX ;
 int NNMRXQ_VI ;
 int NNMTXQ_VI ;
 int NOFLDRXQ ;
 int NOFLDRXQ_VI ;
 int NOFLDTXQ ;
 int NOFLDTXQ_VI ;
 int NRXQ ;
 int NRXQ_VI ;
 int NTXQ ;
 int NTXQ_VI ;
 int PKTC_IDX ;
 int PKTC_IDX_OFLD ;
 int SGE_NCOUNTERS ;
 scalar_t__ SGE_NTIMERS ;
 scalar_t__ TMR_IDX ;
 scalar_t__ TMR_IDX_OFLD ;
 int calculate_nqueues (int*,int,int ) ;
 scalar_t__ cpu_vendor_id ;
 int mp_ncpus ;
 int nitems (int ) ;
 int pcie_relaxed_ordering ;
 int printf (char*,int) ;
 int rss_getnumbuckets () ;
 int t4_intr_types ;
 int t4_iscsicaps_allowed ;
 int t4_nnmrxq_vi ;
 int t4_nnmtxq_vi ;
 int t4_nofldrxq ;
 int t4_nofldrxq_vi ;
 int t4_nofldtxq ;
 int t4_nofldtxq_vi ;
 int t4_nrxq ;
 int t4_nrxq_vi ;
 int t4_ntxq ;
 int t4_ntxq_vi ;
 int t4_num_vis ;
 int t4_pktc_idx ;
 int t4_pktc_idx_ofld ;
 int t4_qsize_rxq ;
 int t4_qsize_txq ;
 int t4_rdmacaps_allowed ;
 scalar_t__ t4_tmr_idx ;
 scalar_t__ t4_tmr_idx_ofld ;
 int t4_toecaps_allowed ;
 int vi_mac_funcs ;

__attribute__((used)) static void
tweak_tunables(void)
{
 int nc = mp_ncpus;

 if (t4_ntxq < 1) {



  calculate_nqueues(&t4_ntxq, nc, NTXQ);

 }

 calculate_nqueues(&t4_ntxq_vi, nc, NTXQ_VI);

 if (t4_nrxq < 1) {



  calculate_nqueues(&t4_nrxq, nc, NRXQ);

 }

 calculate_nqueues(&t4_nrxq_vi, nc, NRXQ_VI);
 if (t4_toecaps_allowed == -1)
  t4_toecaps_allowed = 0;

 if (t4_rdmacaps_allowed == -1)
  t4_rdmacaps_allowed = 0;

 if (t4_iscsicaps_allowed == -1)
  t4_iscsicaps_allowed = 0;







 if (t4_tmr_idx < 0 || t4_tmr_idx >= SGE_NTIMERS)
  t4_tmr_idx = TMR_IDX;

 if (t4_pktc_idx < -1 || t4_pktc_idx >= SGE_NCOUNTERS)
  t4_pktc_idx = PKTC_IDX;

 if (t4_qsize_txq < 128)
  t4_qsize_txq = 128;

 if (t4_qsize_rxq < 128)
  t4_qsize_rxq = 128;
 while (t4_qsize_rxq & 7)
  t4_qsize_rxq++;

 t4_intr_types &= INTR_MSIX | INTR_MSI | INTR_INTX;
 if (t4_num_vis < 1)
  t4_num_vis = 1;
 if (t4_num_vis > nitems(vi_mac_funcs)) {
  t4_num_vis = nitems(vi_mac_funcs);
  printf("cxgbe: number of VIs limited to %d\n", t4_num_vis);
 }

 if (pcie_relaxed_ordering < 0 || pcie_relaxed_ordering > 2) {
  pcie_relaxed_ordering = 1;

  if (cpu_vendor_id == CPU_VENDOR_INTEL)
   pcie_relaxed_ordering = 0;

 }
}

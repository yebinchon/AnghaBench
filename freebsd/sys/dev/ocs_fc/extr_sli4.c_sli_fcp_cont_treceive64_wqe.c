
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int sli4_t ;
struct TYPE_3__ {int sec_xri_tag; } ;
struct TYPE_4__ {TYPE_1__ dword5; int command; } ;
typedef TYPE_2__ sli4_fcp_treceive64_wqe_t ;
typedef int ocs_remote_node_t ;
typedef int ocs_dma_t ;
typedef scalar_t__ int32_t ;


 int SLI4_WQE_FCP_CONT_TRECEIVE64 ;
 scalar_t__ sli_fcp_treceive64_wqe (int *,void*,size_t,int *,int ,int ,int ,int ,int ,int ,int ,int ,int *,int ,int ,int ,int ,int ) ;

int32_t
sli_fcp_cont_treceive64_wqe(sli4_t *sli4, void *buf, size_t size, ocs_dma_t *sgl, uint32_t first_data_sge,
   uint32_t relative_off, uint32_t xfer_len, uint16_t xri, uint16_t sec_xri, uint16_t tag,
   uint16_t cq_id, uint16_t xid, uint32_t rpi, ocs_remote_node_t *rnode, uint32_t flags,
   uint8_t dif, uint8_t bs, uint8_t csctl, uint32_t app_id)
{
 int32_t rc;

 rc = sli_fcp_treceive64_wqe(sli4, buf, size, sgl, first_data_sge, relative_off, xfer_len, xri, tag,
   cq_id, xid, rpi, rnode, flags, dif, bs, csctl, app_id);
 if (rc == 0) {
  sli4_fcp_treceive64_wqe_t *trecv = buf;

  trecv->command = SLI4_WQE_FCP_CONT_TRECEIVE64;
  trecv->dword5.sec_xri_tag = sec_xri;
 }
 return rc;
}

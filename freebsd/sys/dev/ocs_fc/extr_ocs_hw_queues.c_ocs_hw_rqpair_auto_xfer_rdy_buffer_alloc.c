
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {int auto_xfer_rdy_size; } ;
struct TYPE_16__ {int os; TYPE_1__ config; int * auto_xfer_rdy_buf_pool; } ;
typedef TYPE_6__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_15__ {int rqindex; int dma; } ;
struct TYPE_13__ {int size; int len; TYPE_7__* alloc; TYPE_2__* virt; } ;
struct TYPE_14__ {TYPE_3__ dma; int rqindex; } ;
struct TYPE_12__ {int f_ctl; int type; int r_ctl; int info; } ;
struct TYPE_17__ {TYPE_5__ payload; TYPE_4__ header; TYPE_2__ hdr; } ;
typedef TYPE_7__ ocs_hw_auto_xfer_rdy_buffer_t ;


 int FALSE ;
 int FC_FCTL_END_SEQUENCE ;
 int FC_FCTL_EXCHANGE_RESPONDER ;
 int FC_FCTL_FIRST_SEQUENCE ;
 int FC_FCTL_LAST_SEQUENCE ;
 int FC_FCTL_SEQUENCE_INITIATIVE ;
 int FC_RCTL_FC4_DATA ;
 int FC_RCTL_INFO_SOL_DATA ;
 int FC_TYPE_FCP ;
 int OCS_HW_RQ_INDEX_DUMMY_DATA ;
 int OCS_HW_RQ_INDEX_DUMMY_HDR ;
 int OCS_HW_RTN_NO_MEMORY ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_MIN_DMA_ALIGNMENT ;
 int fc_htobe24 (int) ;
 scalar_t__ ocs_dma_alloc (int ,int *,int ,int ) ;
 int ocs_free (int ,TYPE_7__*,int) ;
 int ocs_hw_assert (int ) ;
 int ocs_log_err (int ,char*) ;
 int * ocs_pool_alloc (int ,int,scalar_t__,int ) ;
 TYPE_7__* ocs_pool_get_instance (int *,scalar_t__) ;

ocs_hw_rtn_e
ocs_hw_rqpair_auto_xfer_rdy_buffer_alloc(ocs_hw_t *hw, uint32_t num_buffers)
{
 ocs_hw_auto_xfer_rdy_buffer_t *buf;
 uint32_t i;

 hw->auto_xfer_rdy_buf_pool = ocs_pool_alloc(hw->os, sizeof(ocs_hw_auto_xfer_rdy_buffer_t), num_buffers, FALSE);
 if (hw->auto_xfer_rdy_buf_pool == ((void*)0)) {
  ocs_log_err(hw->os, "Failure to allocate auto xfer ready buffer pool\n");
  return OCS_HW_RTN_NO_MEMORY;
 }

 for (i = 0; i < num_buffers; i++) {

  buf = ocs_pool_get_instance(hw->auto_xfer_rdy_buf_pool, i);
  ocs_hw_assert(buf != ((void*)0));


  if (ocs_dma_alloc(hw->os, &buf->payload.dma, hw->config.auto_xfer_rdy_size, OCS_MIN_DMA_ALIGNMENT)) {
   ocs_log_err(hw->os, "DMA allocation failed\n");
   ocs_free(hw->os, buf, sizeof(*buf));
   return OCS_HW_RTN_NO_MEMORY;
  }


  buf->hdr.info = FC_RCTL_INFO_SOL_DATA;
  buf->hdr.r_ctl = FC_RCTL_FC4_DATA;
  buf->hdr.type = FC_TYPE_FCP;
  buf->hdr.f_ctl = fc_htobe24(FC_FCTL_EXCHANGE_RESPONDER |
         FC_FCTL_FIRST_SEQUENCE |
         FC_FCTL_LAST_SEQUENCE |
         FC_FCTL_END_SEQUENCE |
         FC_FCTL_SEQUENCE_INITIATIVE);


  buf->header.rqindex = OCS_HW_RQ_INDEX_DUMMY_HDR;
  buf->header.dma.virt = &buf->hdr;
  buf->header.dma.alloc = buf;
  buf->header.dma.size = sizeof(buf->hdr);
  buf->header.dma.len = sizeof(buf->hdr);

  buf->payload.rqindex = OCS_HW_RQ_INDEX_DUMMY_DATA;
 }
 return OCS_HW_RTN_SUCCESS;
}

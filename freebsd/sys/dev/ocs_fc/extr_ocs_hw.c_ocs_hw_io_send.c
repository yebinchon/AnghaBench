
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_61__ TYPE_9__ ;
typedef struct TYPE_60__ TYPE_8__ ;
typedef struct TYPE_59__ TYPE_7__ ;
typedef struct TYPE_58__ TYPE_6__ ;
typedef struct TYPE_57__ TYPE_5__ ;
typedef struct TYPE_56__ TYPE_4__ ;
typedef struct TYPE_55__ TYPE_46__ ;
typedef struct TYPE_54__ TYPE_41__ ;
typedef struct TYPE_53__ TYPE_3__ ;
typedef struct TYPE_52__ TYPE_32__ ;
typedef struct TYPE_51__ TYPE_2__ ;
typedef struct TYPE_50__ TYPE_1__ ;
typedef struct TYPE_49__ TYPE_12__ ;
typedef struct TYPE_48__ TYPE_11__ ;
typedef struct TYPE_47__ TYPE_10__ ;


typedef void* uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_59__ {scalar_t__ indicator; } ;
typedef TYPE_7__ ocs_remote_node_t ;
struct TYPE_57__ {int wqe_size; } ;
struct TYPE_49__ {TYPE_5__ config; } ;
struct TYPE_56__ {scalar_t__ unregistered_rid; int retain_tsend_io_length; int use_dif_sec_xri; int use_dif_quarantine; scalar_t__ use_unregistered_rpi; } ;
struct TYPE_53__ {int dif_mode; } ;
struct TYPE_60__ {int state; int os; int * tcmd_wq_submit; TYPE_12__ sli; int auto_xfer_rdy_enabled; TYPE_4__ workaround; int io_lock; int sec_hio_wait_count; int sec_hio_wait_list; int io_inuse; TYPE_3__ config; } ;
typedef TYPE_8__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
typedef int ocs_hw_io_type_e ;
struct TYPE_55__ {int wqebuf; } ;
struct TYPE_58__ {scalar_t__ offset; int app_id; int cs_ctl; int ox_id; int timeout; int flags; int blk_size; int dif_oper; } ;
struct TYPE_50__ {int timeout; int rsp; int cmnd_size; int cmnd; int blk_size; int dif_oper; int first_burst; } ;
struct TYPE_47__ {TYPE_6__ fcp_tgt; TYPE_1__ fcp_ini; } ;
struct TYPE_51__ {TYPE_11__* virt; } ;
struct TYPE_61__ {int type; void* xbusy; TYPE_46__ wqe; TYPE_32__* wq; int is_port_owned; int reqtag; int indicator; int def_sgl; int tgt_wqe_timeout; int auto_xfer_rdy_dnrx; scalar_t__ length; int first_data_sge; TYPE_41__* sec_hio; int state; scalar_t__ sec_len; TYPE_10__ sec_iparam; TYPE_41__* ovfl_io; void* quarantine; TYPE_2__ xfer_rdy; void* arg; void* done; TYPE_7__* rnode; } ;
typedef TYPE_9__ ocs_hw_io_t ;
typedef TYPE_10__ ocs_hw_io_param_t ;
struct TYPE_48__ {scalar_t__ rsvd; scalar_t__ fcp_burst_len; scalar_t__ fcp_data_ro; } ;
typedef TYPE_11__ fcp_xfer_rdy_iu_t ;
struct TYPE_54__ {int indicator; void* quarantine; } ;
struct TYPE_52__ {size_t instance; int use_count; } ;


 int CPUTRACE (char*) ;
 void* FALSE ;
 int OCS_HW_DIF_MODE_SEPARATE ;
 int OCS_HW_DIF_OPER_DISABLED ;



 int OCS_HW_IO_STATE_WAIT_SEC_HIO ;



 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_HW_STATE_ACTIVE ;
 int OCS_STAT (int ) ;
 int SLI4_CQ_DEFAULT ;
 int SLI4_IO_CONTINUATION ;
 int SLI4_IO_DNRX ;
 void* TRUE ;
 scalar_t__ UINT32_MAX ;
 int hw_wq_write (TYPE_32__*,TYPE_46__*) ;
 scalar_t__ ocs_htobe32 (scalar_t__) ;
 int ocs_hw_add_io_timed_wqe (TYPE_8__*,TYPE_9__*) ;
 int ocs_hw_assert (int ) ;
 TYPE_41__* ocs_hw_io_alloc (TYPE_8__*) ;
 int ocs_hw_io_ini_sge (TYPE_8__*,TYPE_9__*,int ,int ,int ) ;
 TYPE_32__* ocs_hw_queue_next_wq (TYPE_8__*,TYPE_9__*) ;
 int ocs_hw_remove_io_timed_wqe (TYPE_8__*,TYPE_9__*) ;
 int ocs_hw_rqpair_auto_xfer_rdy_buffer_post (TYPE_8__*,TYPE_9__*,int) ;
 int ocs_list_add_tail (int *,TYPE_9__*) ;
 int ocs_list_remove (int *,TYPE_9__*) ;
 int ocs_lock (int *) ;
 int ocs_log_err (int ,char*,...) ;
 int ocs_log_test (int ,char*,scalar_t__) ;
 int ocs_unlock (int *) ;
 int sli_fcp_cont_treceive64_wqe (TYPE_12__*,int ,int ,int *,int ,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,scalar_t__,TYPE_7__*,int ,int ,int ,int ,int ) ;
 int sli_fcp_icmnd64_wqe (TYPE_12__*,int ,int ,int *,int ,int ,int ,scalar_t__,TYPE_7__*,int ) ;
 int sli_fcp_iread64_wqe (TYPE_12__*,int ,int ,int *,int ,scalar_t__,int ,int ,int ,scalar_t__,TYPE_7__*,int ,int ,int ) ;
 int sli_fcp_iwrite64_wqe (TYPE_12__*,int ,int ,int *,int ,scalar_t__,int ,int ,int ,int ,scalar_t__,TYPE_7__*,int ,int ,int ) ;
 int sli_fcp_treceive64_wqe (TYPE_12__*,int ,int ,int *,int ,scalar_t__,scalar_t__,int ,int ,int ,int ,scalar_t__,TYPE_7__*,int ,int ,int ,int ,int ) ;
 int sli_fcp_trsp64_wqe (TYPE_12__*,int ,int ,int *,scalar_t__,int ,int ,int ,int ,scalar_t__,TYPE_7__*,int ,int ,int ,int ) ;
 int sli_fcp_tsend64_wqe (TYPE_12__*,int ,int ,int *,int ,scalar_t__,scalar_t__,int ,int ,int ,int ,scalar_t__,TYPE_7__*,int ,int ,int ,int ,int ) ;

ocs_hw_rtn_e
ocs_hw_io_send(ocs_hw_t *hw, ocs_hw_io_type_e type, ocs_hw_io_t *io,
  uint32_t len, ocs_hw_io_param_t *iparam, ocs_remote_node_t *rnode,
  void *cb, void *arg)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 uint32_t rpi;
 uint8_t send_wqe = TRUE;

 CPUTRACE("");

 if (!hw || !io || !rnode || !iparam) {
  ocs_log_err(((void*)0), "bad parm hw=%p io=%p iparam=%p rnode=%p\n",
       hw, io, iparam, rnode);
  return OCS_HW_RTN_ERROR;
 }

 if (hw->state != OCS_HW_STATE_ACTIVE) {
  ocs_log_err(hw->os, "cannot send IO, HW state=%d\n", hw->state);
  return OCS_HW_RTN_ERROR;
 }

 rpi = rnode->indicator;

 if (hw->workaround.use_unregistered_rpi && (rpi == UINT32_MAX)) {
  rpi = hw->workaround.unregistered_rid;
  ocs_log_test(hw->os, "using unregistered RPI: %d\n", rpi);
 }




 io->rnode = rnode;
 io->type = type;
 io->done = cb;
 io->arg = arg;




 switch (type) {
 case 132:




  if (hw->workaround.use_dif_quarantine && (hw->config.dif_mode == OCS_HW_DIF_MODE_SEPARATE) &&
      (iparam->fcp_tgt.dif_oper != OCS_HW_DIF_OPER_DISABLED)) {
   io->quarantine = TRUE;
  }

  ocs_hw_io_ini_sge(hw, io, iparam->fcp_ini.cmnd, iparam->fcp_ini.cmnd_size,
    iparam->fcp_ini.rsp);

  if (sli_fcp_iread64_wqe(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl, io->first_data_sge, len,
     io->indicator, io->reqtag, SLI4_CQ_DEFAULT, rpi, rnode,
     iparam->fcp_ini.dif_oper, iparam->fcp_ini.blk_size,
     iparam->fcp_ini.timeout)) {
   ocs_log_err(hw->os, "IREAD WQE error\n");
   rc = OCS_HW_RTN_ERROR;
  }
  break;
 case 131:
  ocs_hw_io_ini_sge(hw, io, iparam->fcp_ini.cmnd, iparam->fcp_ini.cmnd_size,
    iparam->fcp_ini.rsp);

  if (sli_fcp_iwrite64_wqe(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl, io->first_data_sge,
      len, iparam->fcp_ini.first_burst,
      io->indicator, io->reqtag,
     SLI4_CQ_DEFAULT, rpi, rnode,
     iparam->fcp_ini.dif_oper, iparam->fcp_ini.blk_size,
     iparam->fcp_ini.timeout)) {
   ocs_log_err(hw->os, "IWRITE WQE error\n");
   rc = OCS_HW_RTN_ERROR;
  }
  break;
 case 133:
  ocs_hw_io_ini_sge(hw, io, iparam->fcp_ini.cmnd, iparam->fcp_ini.cmnd_size,
    iparam->fcp_ini.rsp);

  if (sli_fcp_icmnd64_wqe(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl,
     io->indicator, io->reqtag, SLI4_CQ_DEFAULT,
     rpi, rnode, iparam->fcp_ini.timeout)) {
   ocs_log_err(hw->os, "ICMND WQE error\n");
   rc = OCS_HW_RTN_ERROR;
  }
  break;
 case 128: {
  uint16_t flags = iparam->fcp_tgt.flags;
  fcp_xfer_rdy_iu_t *xfer = io->xfer_rdy.virt;




  *((uint32_t *)xfer->fcp_data_ro) = ocs_htobe32(iparam->fcp_tgt.offset);
  *((uint32_t *)xfer->fcp_burst_len) = ocs_htobe32(len);
  *((uint32_t *)xfer->rsvd) = 0;

  if (io->xbusy) {
   flags |= SLI4_IO_CONTINUATION;
  } else {
   flags &= ~SLI4_IO_CONTINUATION;
  }

  io->tgt_wqe_timeout = iparam->fcp_tgt.timeout;





  if (hw->workaround.use_dif_quarantine && (hw->config.dif_mode == OCS_HW_DIF_MODE_SEPARATE) &&
      (iparam->fcp_tgt.dif_oper != OCS_HW_DIF_OPER_DISABLED)) {
   io->quarantine = TRUE;
  }
  if (hw->workaround.use_dif_sec_xri && (iparam->fcp_tgt.dif_oper != OCS_HW_DIF_OPER_DISABLED)) {





   if (io->ovfl_io != ((void*)0)) {
    io->sec_hio = io->ovfl_io;
    io->sec_hio->quarantine = TRUE;
   } else {
    io->sec_hio = ocs_hw_io_alloc(hw);
   }
   if (io->sec_hio == ((void*)0)) {



    io->sec_iparam = *iparam;
    io->sec_len = len;
    ocs_lock(&hw->io_lock);
     ocs_list_remove(&hw->io_inuse, io);
     ocs_list_add_tail(&hw->sec_hio_wait_list, io);
     io->state = OCS_HW_IO_STATE_WAIT_SEC_HIO;
     hw->sec_hio_wait_count++;
    ocs_unlock(&hw->io_lock);
    send_wqe = FALSE;

    break;
   }

   if (io->xbusy) {
    io->sec_hio->quarantine = TRUE;
   }
  }





  if (io->xbusy && (io->sec_hio != ((void*)0))) {
   if (sli_fcp_cont_treceive64_wqe(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl, io->first_data_sge,
         iparam->fcp_tgt.offset, len, io->indicator, io->sec_hio->indicator,
         io->reqtag, SLI4_CQ_DEFAULT,
         iparam->fcp_tgt.ox_id, rpi, rnode,
         flags,
         iparam->fcp_tgt.dif_oper, iparam->fcp_tgt.blk_size,
         iparam->fcp_tgt.cs_ctl, iparam->fcp_tgt.app_id)) {
    ocs_log_err(hw->os, "TRECEIVE WQE error\n");
    rc = OCS_HW_RTN_ERROR;
   }
  } else {
   if (sli_fcp_treceive64_wqe(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl, io->first_data_sge,
         iparam->fcp_tgt.offset, len, io->indicator, io->reqtag,
         SLI4_CQ_DEFAULT,
         iparam->fcp_tgt.ox_id, rpi, rnode,
         flags,
         iparam->fcp_tgt.dif_oper, iparam->fcp_tgt.blk_size,
         iparam->fcp_tgt.cs_ctl, iparam->fcp_tgt.app_id)) {
    ocs_log_err(hw->os, "TRECEIVE WQE error\n");
    rc = OCS_HW_RTN_ERROR;
   }
  }
  break;
 }
 case 130: {
  uint16_t flags = iparam->fcp_tgt.flags;

  if (io->xbusy) {
   flags |= SLI4_IO_CONTINUATION;
  } else {
   flags &= ~SLI4_IO_CONTINUATION;
  }

  io->tgt_wqe_timeout = iparam->fcp_tgt.timeout;
  if (sli_fcp_tsend64_wqe(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl, io->first_data_sge,
     iparam->fcp_tgt.offset, len, io->indicator, io->reqtag,
     SLI4_CQ_DEFAULT,
     iparam->fcp_tgt.ox_id, rpi, rnode,
     flags,
     iparam->fcp_tgt.dif_oper,
     iparam->fcp_tgt.blk_size,
     iparam->fcp_tgt.cs_ctl,
     iparam->fcp_tgt.app_id)) {
   ocs_log_err(hw->os, "TSEND WQE error\n");
   rc = OCS_HW_RTN_ERROR;
  } else if (hw->workaround.retain_tsend_io_length) {
   io->length = len;
  }
  break;
 }
 case 129: {
  uint16_t flags = iparam->fcp_tgt.flags;

  if (io->xbusy) {
   flags |= SLI4_IO_CONTINUATION;
  } else {
   flags &= ~SLI4_IO_CONTINUATION;
  }


  if (hw->auto_xfer_rdy_enabled && io->is_port_owned) {
   if ((io->auto_xfer_rdy_dnrx = ocs_hw_rqpair_auto_xfer_rdy_buffer_post(hw, io, 1))) {
    flags |= SLI4_IO_DNRX;
   }
  }

  io->tgt_wqe_timeout = iparam->fcp_tgt.timeout;
  if (sli_fcp_trsp64_wqe(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size,
     &io->def_sgl,
     len,
     io->indicator, io->reqtag,
     SLI4_CQ_DEFAULT,
     iparam->fcp_tgt.ox_id,
     rpi, rnode,
     flags, iparam->fcp_tgt.cs_ctl,
     io->is_port_owned,
     iparam->fcp_tgt.app_id)) {
   ocs_log_err(hw->os, "TRSP WQE error\n");
   rc = OCS_HW_RTN_ERROR;
  }

  break;
 }
 default:
  ocs_log_err(hw->os, "unsupported IO type %#x\n", type);
  rc = OCS_HW_RTN_ERROR;
 }

 if (send_wqe && (OCS_HW_RTN_SUCCESS == rc)) {
  if (io->wq == ((void*)0)) {
   io->wq = ocs_hw_queue_next_wq(hw, io);
   ocs_hw_assert(io->wq != ((void*)0));
  }

  io->xbusy = TRUE;





  OCS_STAT(hw->tcmd_wq_submit[io->wq->instance]++);
  OCS_STAT(io->wq->use_count++);
  ocs_hw_add_io_timed_wqe(hw, io);
  rc = hw_wq_write(io->wq, &io->wqe);
  if (rc >= 0) {

   rc = 0;
  } else {

   ocs_log_err(hw->os, "sli_queue_write failed: %d\n", rc);
   io->xbusy = FALSE;
   ocs_hw_remove_io_timed_wqe(hw, io);
  }
 }

 return rc;
}

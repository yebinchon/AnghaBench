
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_14__ {int n_io; } ;
struct TYPE_15__ {int os; TYPE_3__** io; int io_free; int sli; TYPE_1__ config; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
struct TYPE_16__ {scalar_t__ indicator; int state; scalar_t__ is_port_owned; TYPE_4__* sgl; } ;
typedef TYPE_3__ ocs_hw_io_t ;
struct TYPE_17__ {int member_0; } ;
typedef TYPE_4__ ocs_dma_t ;
typedef int cmd ;


 int MIN (int,int) ;
 int OCS_CMD_POLL ;
 int OCS_HW_IO_STATE_FREE ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_MIN_DMA_ALIGNMENT ;
 int OCS_M_NOWAIT ;
 int SLI4_BMBX_SIZE ;
 scalar_t__ ocs_dma_alloc (int ,TYPE_4__*,int,int ) ;
 int ocs_dma_free (int ,TYPE_4__*) ;
 int ocs_free (int ,TYPE_4__**,int) ;
 scalar_t__ ocs_hw_command (TYPE_2__*,int *,int ,int *,int *) ;
 int ocs_list_add_tail (int *,TYPE_3__*) ;
 int ocs_log_err (int ,char*) ;
 TYPE_4__** ocs_malloc (int ,int,int ) ;
 scalar_t__ sli_cmd_fcoe_post_sgl_pages (int *,int *,int,scalar_t__,int,TYPE_4__**,int *,TYPE_4__*) ;
 int sli_get_sgl_preregister (int *) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_init_io(ocs_hw_t *hw)
{
 uint32_t i = 0, io_index = 0;
 uint32_t prereg = 0;
 ocs_hw_io_t *io = ((void*)0);
 uint8_t cmd[SLI4_BMBX_SIZE];
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 uint32_t nremaining;
 uint32_t n = 0;
 uint32_t sgls_per_request = 256;
 ocs_dma_t **sgls = ((void*)0);
 ocs_dma_t reqbuf = { 0 };

 prereg = sli_get_sgl_preregister(&hw->sli);

 if (prereg) {
  sgls = ocs_malloc(hw->os, sizeof(*sgls) * sgls_per_request, OCS_M_NOWAIT);
  if (sgls == ((void*)0)) {
   ocs_log_err(hw->os, "ocs_malloc sgls failed\n");
   return OCS_HW_RTN_NO_MEMORY;
  }

  rc = ocs_dma_alloc(hw->os, &reqbuf, 32 + sgls_per_request*16, OCS_MIN_DMA_ALIGNMENT);
  if (rc) {
   ocs_log_err(hw->os, "ocs_dma_alloc reqbuf failed\n");
   ocs_free(hw->os, sgls, sizeof(*sgls) * sgls_per_request);
   return OCS_HW_RTN_NO_MEMORY;
  }
 }

 io = hw->io[io_index];
 for (nremaining = hw->config.n_io; nremaining; nremaining -= n) {
  if (prereg) {



   for (n = 0; n < MIN(sgls_per_request, nremaining); n++) {

    if (n > 0) {
     if (hw->io[io_index + n]->indicator != (hw->io[io_index + n-1]->indicator+1)) {
      break;
     }
    }
    sgls[n] = hw->io[io_index + n]->sgl;
   }

   if (sli_cmd_fcoe_post_sgl_pages(&hw->sli, cmd, sizeof(cmd),
      io->indicator, n, sgls, ((void*)0), &reqbuf)) {
    if (ocs_hw_command(hw, cmd, OCS_CMD_POLL, ((void*)0), ((void*)0))) {
     rc = OCS_HW_RTN_ERROR;
     ocs_log_err(hw->os, "SGL post failed\n");
     break;
    }
   }
  } else {
   n = nremaining;
  }


  for (i = 0; i < n; i ++) {
   io->is_port_owned = 0;
   io->state = OCS_HW_IO_STATE_FREE;
   ocs_list_add_tail(&hw->io_free, io);
   io = hw->io[io_index+1];
   io_index++;
  }
 }

 if (prereg) {
  ocs_dma_free(hw->os, &reqbuf);
  ocs_free(hw->os, sgls, sizeof(*sgls) * sgls_per_request);
 }

 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {scalar_t__ virt; scalar_t__ phys; } ;
struct TYPE_9__ {int os; TYPE_8__ bmbx; } ;
typedef TYPE_1__ sli4_t ;
struct TYPE_10__ {scalar_t__ val; } ;
typedef TYPE_2__ sli4_mcqe_t ;
typedef int int32_t ;


 int OCS_DEBUG_ENABLE_CQ_DUMP ;
 int OCS_DMASYNC_POSTREAD ;
 int SLI4_BMBX_SIZE ;
 int SLI4_REG_BMBX ;
 int SLI4_REG_SLIPORT_ERROR1 ;
 int SLI4_REG_SLIPORT_ERROR2 ;
 int SLI4_REG_SLIPORT_STATUS ;
 int ocs_dma_sync (TYPE_8__*,int ) ;
 int ocs_dump32 (int ,int ,char*,void*,int) ;
 int ocs_log_crit (int ,char*,void*,int ,...) ;
 int ocs_log_err (int ,char*) ;
 scalar_t__ sli_bmbx_write (TYPE_1__*) ;
 int sli_cqe_mq (void*) ;
 int sli_dump_bmbx_command (TYPE_1__*,scalar_t__,char*) ;
 scalar_t__ sli_fw_error_status (TYPE_1__*) ;
 int sli_reg_read (TYPE_1__*,int ) ;

int32_t
sli_bmbx_command(sli4_t *sli4)
{
 void *cqe = (uint8_t *)sli4->bmbx.virt + SLI4_BMBX_SIZE;





 if (sli_fw_error_status(sli4) > 0) {
  ocs_log_crit(sli4->os, "Chip is in an error state - Mailbox "
   "command rejected status=%#x error1=%#x error2=%#x\n",
   sli_reg_read(sli4, SLI4_REG_SLIPORT_STATUS),
   sli_reg_read(sli4, SLI4_REG_SLIPORT_ERROR1),
   sli_reg_read(sli4, SLI4_REG_SLIPORT_ERROR2));
  return -1;
 }

 if (sli_bmbx_write(sli4)) {
  ocs_log_crit(sli4->os, "bootstrap mailbox write fail phys=%p reg=%#x\n",
   (void*)sli4->bmbx.phys,
   sli_reg_read(sli4, SLI4_REG_BMBX));
  return -1;
 }


 ocs_dma_sync(&sli4->bmbx, OCS_DMASYNC_POSTREAD);
 if (((sli4_mcqe_t *)cqe)->val) {




  return sli_cqe_mq(cqe);
 } else {
  ocs_log_err(sli4->os, "invalid or wrong type\n");
  return -1;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ if_type; int os; } ;
typedef TYPE_1__ sli4_t ;
typedef int int32_t ;


 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_VF ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 scalar_t__ SLI4_PORT_SEMAPHORE_IN_ERR (scalar_t__) ;
 scalar_t__ SLI4_PORT_STATUS_ERROR (scalar_t__) ;
 int SLI4_REG_SLIPORT_SEMAPHORE ;
 int SLI4_REG_SLIPORT_STATUS ;
 int SLI4_REG_UERR_MASK_HI ;
 int SLI4_REG_UERR_MASK_LO ;
 int SLI4_REG_UERR_STATUS_HI ;
 int SLI4_REG_UERR_STATUS_LO ;
 scalar_t__ UINT32_MAX ;
 int ocs_log_err (int ,char*) ;
 scalar_t__ sli_reg_read (TYPE_1__*,int ) ;

int32_t sli_fw_error_status(sli4_t *sli4)
{
 uint32_t sliport_semaphore;
 int32_t rc = 0;

 sliport_semaphore = sli_reg_read(sli4, SLI4_REG_SLIPORT_SEMAPHORE);
 if (UINT32_MAX == sliport_semaphore) {
  ocs_log_err(sli4->os, "error reading SLIPORT_SEMAPHORE register\n");
  return 1;
 }
 rc = (SLI4_PORT_SEMAPHORE_IN_ERR(sliport_semaphore) ? 1 : 0);

 if (rc == 0) {
  if (SLI4_IF_TYPE_BE3_SKH_PF == sli4->if_type ||
      (SLI4_IF_TYPE_BE3_SKH_VF == sli4->if_type)) {
   uint32_t uerr_mask_lo, uerr_mask_hi;
   uint32_t uerr_status_lo, uerr_status_hi;

   uerr_mask_lo = sli_reg_read(sli4, SLI4_REG_UERR_MASK_LO);
   uerr_mask_hi = sli_reg_read(sli4, SLI4_REG_UERR_MASK_HI);
   uerr_status_lo = sli_reg_read(sli4, SLI4_REG_UERR_STATUS_LO);
   uerr_status_hi = sli_reg_read(sli4, SLI4_REG_UERR_STATUS_HI);
   if ((uerr_mask_lo & uerr_status_lo) != 0 ||
       (uerr_mask_hi & uerr_status_hi) != 0) {
    rc = 1;
   }
  } else if ((SLI4_IF_TYPE_LANCER_FC_ETH == sli4->if_type)) {
   uint32_t sliport_status;

   sliport_status = sli_reg_read(sli4, SLI4_REG_SLIPORT_STATUS);
   rc = (SLI4_PORT_STATUS_ERROR(sliport_status) ? 1 : 0);
  }
 }
 return rc;
}

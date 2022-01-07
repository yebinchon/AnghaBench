
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int os; } ;
typedef TYPE_1__ sli4_t ;
typedef int int32_t ;


 int SLI4_BMBX_RDY ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 scalar_t__ SLI4_PORT_STATUS_DUMP_PRESENT (int) ;
 scalar_t__ SLI4_PORT_STATUS_FDP_PRESENT (int) ;
 scalar_t__ SLI4_PORT_STATUS_READY (int) ;
 int SLI4_REG_BMBX ;
 int SLI4_REG_SLIPORT_STATUS ;
 int SLI4_REG_UERR_MASK_HI ;
 int SLI4_REG_UERR_MASK_LO ;
 int SLI4_REG_UERR_STATUS_HI ;
 int SLI4_REG_UERR_STATUS_LO ;
 int ocs_log_test (int ,char*,scalar_t__) ;
 scalar_t__ sli_get_if_type (TYPE_1__*) ;
 int sli_reg_read (TYPE_1__*,int ) ;

int32_t sli_dump_is_ready(sli4_t *sli4)
{
 int32_t rc = 0;
 uint32_t port_val;
 uint32_t bmbx_val;
 uint32_t uerr_lo;
 uint32_t uerr_hi;
 uint32_t uerr_mask_lo;
 uint32_t uerr_mask_hi;

 if (SLI4_IF_TYPE_BE3_SKH_PF == sli_get_if_type(sli4)) {

  uerr_lo = sli_reg_read(sli4, SLI4_REG_UERR_STATUS_LO);
  uerr_hi = sli_reg_read(sli4, SLI4_REG_UERR_STATUS_HI);
  uerr_mask_lo = sli_reg_read(sli4, SLI4_REG_UERR_MASK_LO);
  uerr_mask_hi = sli_reg_read(sli4, SLI4_REG_UERR_MASK_HI);
  if ((uerr_lo & ~uerr_mask_lo) || (uerr_hi & ~uerr_mask_hi)) {
   rc = 1;
  }

 } else if (SLI4_IF_TYPE_LANCER_FC_ETH == sli_get_if_type(sli4)) {




  port_val = sli_reg_read(sli4, SLI4_REG_SLIPORT_STATUS);
  bmbx_val = sli_reg_read(sli4, SLI4_REG_BMBX);

  if ((bmbx_val & SLI4_BMBX_RDY) &&
      SLI4_PORT_STATUS_READY(port_val)) {
       if(SLI4_PORT_STATUS_DUMP_PRESENT(port_val)) {
    rc = 1;
   }else if( SLI4_PORT_STATUS_FDP_PRESENT(port_val)) {
    rc = 2;
   }
  }
 } else {
  ocs_log_test(sli4->os, "invalid iftype=%d\n", sli_get_if_type(sli4));
  return -1;
 }
 return rc;
}

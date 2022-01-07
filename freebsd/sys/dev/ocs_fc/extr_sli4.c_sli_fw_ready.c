
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ if_type; } ;
typedef TYPE_1__ sli4_t ;
typedef int int32_t ;


 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_VF ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 int SLI4_PORT_SEMAPHORE_IN_ERR (int ) ;
 scalar_t__ SLI4_PORT_SEMAPHORE_PORT (int ) ;
 scalar_t__ SLI4_PORT_SEMAPHORE_STATUS_POST_READY ;
 scalar_t__ SLI4_PORT_STATUS_READY (int ) ;
 int SLI4_REG_SLIPORT_SEMAPHORE ;
 int SLI4_REG_SLIPORT_STATUS ;
 int sli_reg_read (TYPE_1__*,int ) ;

int32_t
sli_fw_ready(sli4_t *sli4)
{
 uint32_t val;
 int32_t rc = -1;




 if (SLI4_IF_TYPE_BE3_SKH_PF == sli4->if_type ||
     SLI4_IF_TYPE_BE3_SKH_VF == sli4->if_type) {
  val = sli_reg_read(sli4, SLI4_REG_SLIPORT_SEMAPHORE);
  rc = ((SLI4_PORT_SEMAPHORE_STATUS_POST_READY ==
         SLI4_PORT_SEMAPHORE_PORT(val)) &&
        (!SLI4_PORT_SEMAPHORE_IN_ERR(val)) ? 1 : 0);
 } else if (SLI4_IF_TYPE_LANCER_FC_ETH == sli4->if_type) {
  val = sli_reg_read(sli4, SLI4_REG_SLIPORT_STATUS);
  rc = (SLI4_PORT_STATUS_READY(val) ? 1 : 0);
 }
 return rc;
}

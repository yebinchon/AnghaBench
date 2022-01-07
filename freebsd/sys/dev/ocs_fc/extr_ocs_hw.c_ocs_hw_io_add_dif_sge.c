
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int last; int buffer_address_low; int buffer_address_high; int sge_type; } ;
typedef TYPE_4__ sli4_dif_sge_t ;
struct TYPE_13__ {scalar_t__ if_type; } ;
struct TYPE_11__ {scalar_t__ n_sgl; } ;
struct TYPE_15__ {TYPE_3__ sli; int * os; TYPE_1__ config; } ;
typedef TYPE_5__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
struct TYPE_16__ {scalar_t__ n_sge; scalar_t__ type; TYPE_2__* sgl; } ;
typedef TYPE_6__ ocs_hw_io_t ;
struct TYPE_12__ {TYPE_4__* virt; } ;


 int FALSE ;
 scalar_t__ OCS_HW_IO_INITIATOR_READ ;
 scalar_t__ OCS_HW_IO_TARGET_WRITE ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 int SLI4_SGE_TYPE_DIF ;
 int SLI4_SGE_TYPE_SKIP ;
 int TRUE ;
 int ocs_addr32_hi (uintptr_t) ;
 int ocs_addr32_lo (uintptr_t) ;
 scalar_t__ ocs_hw_io_overflow_sgl (TYPE_5__*,TYPE_6__*) ;
 int ocs_log_err (int *,char*,scalar_t__,...) ;

ocs_hw_rtn_e
ocs_hw_io_add_dif_sge(ocs_hw_t *hw, ocs_hw_io_t *io, uintptr_t addr)
{
 sli4_dif_sge_t *data = ((void*)0);

 if (!hw || !io || !addr) {
  ocs_log_err(hw ? hw->os : ((void*)0),
       "bad parameter hw=%p io=%p addr=%lx\n",
       hw, io, addr);
  return OCS_HW_RTN_ERROR;
 }

 if ((io->n_sge + 1) > hw->config.n_sgl) {
  if (ocs_hw_io_overflow_sgl(hw, io) != OCS_HW_RTN_ERROR) {
   ocs_log_err(hw->os, "SGL full (%d)\n", io->n_sge);
   return OCS_HW_RTN_ERROR;
  }
 }

 data = io->sgl->virt;
 data += io->n_sge;

 data->sge_type = SLI4_SGE_TYPE_DIF;

 if (((io->type == OCS_HW_IO_TARGET_WRITE) || (io->type == OCS_HW_IO_INITIATOR_READ)) &&
  (SLI4_IF_TYPE_LANCER_FC_ETH != hw->sli.if_type)) {
  data->sge_type = SLI4_SGE_TYPE_SKIP;
 }

 data->buffer_address_high = ocs_addr32_hi(addr);
 data->buffer_address_low = ocs_addr32_lo(addr);






 data->last = TRUE;
 if (io->n_sge) {
  data[-1].last = FALSE;
 }

 io->n_sge++;

 return OCS_HW_RTN_SUCCESS;
}

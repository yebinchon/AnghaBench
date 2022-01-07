
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {int last; int data_offset; int buffer_length; int buffer_address_low; int buffer_address_high; int sge_type; } ;
typedef TYPE_3__ sli4_sge_t ;
struct TYPE_14__ {int sli; int * os; } ;
typedef TYPE_4__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
struct TYPE_15__ {scalar_t__ n_sge; scalar_t__ sgl_count; scalar_t__ first_data_sge; TYPE_2__* ovfl_lsp; int sge_offset; TYPE_1__* sgl; } ;
typedef TYPE_5__ ocs_hw_io_t ;
struct TYPE_12__ {int segment_length; } ;
struct TYPE_11__ {TYPE_3__* virt; } ;


 int FALSE ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int SLI4_SGE_TYPE_DATA ;
 int TRUE ;
 int ocs_addr32_hi (uintptr_t) ;
 int ocs_addr32_lo (uintptr_t) ;
 scalar_t__ ocs_hw_io_overflow_sgl (TYPE_4__*,TYPE_5__*) ;
 int ocs_log_err (int *,char*,TYPE_4__*,...) ;
 int sli_get_max_sge (int *) ;

ocs_hw_rtn_e
ocs_hw_io_add_sge(ocs_hw_t *hw, ocs_hw_io_t *io, uintptr_t addr, uint32_t length)
{
 sli4_sge_t *data = ((void*)0);

 if (!hw || !io || !addr || !length) {
  ocs_log_err(hw ? hw->os : ((void*)0),
       "bad parameter hw=%p io=%p addr=%lx length=%u\n",
       hw, io, addr, length);
  return OCS_HW_RTN_ERROR;
 }

 if ((length != 0) && (io->n_sge + 1) > io->sgl_count) {
  if (ocs_hw_io_overflow_sgl(hw, io) != OCS_HW_RTN_SUCCESS) {
   ocs_log_err(hw->os, "SGL full (%d)\n", io->n_sge);
   return OCS_HW_RTN_ERROR;
  }
 }

 if (length > sli_get_max_sge(&hw->sli)) {
  ocs_log_err(hw->os, "length of SGE %d bigger than allowed %d\n",
       length, sli_get_max_sge(&hw->sli));
  return OCS_HW_RTN_ERROR;
 }

 data = io->sgl->virt;
 data += io->n_sge;

 data->sge_type = SLI4_SGE_TYPE_DATA;
 data->buffer_address_high = ocs_addr32_hi(addr);
 data->buffer_address_low = ocs_addr32_lo(addr);
 data->buffer_length = length;
 data->data_offset = io->sge_offset;





 data->last = TRUE;
 if (io->n_sge) {
  data[-1].last = FALSE;
 }


 if (io->first_data_sge == 0) {
  io->first_data_sge = io->n_sge;
 }

 io->sge_offset += length;
 io->n_sge++;


 if (io->ovfl_lsp != ((void*)0)) {
  io->ovfl_lsp->segment_length = io->n_sge * sizeof(sli4_sge_t);
 }

 return OCS_HW_RTN_SUCCESS;
}

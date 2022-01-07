
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {void* last; void* sge_type; int buffer_length; int buffer_address_low; int buffer_address_high; } ;
typedef TYPE_3__ sli4_sge_t ;
struct TYPE_12__ {int * os; } ;
typedef TYPE_4__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
typedef int ocs_hw_io_type_e ;
struct TYPE_10__ {int size; int phys; } ;
struct TYPE_9__ {TYPE_3__* virt; } ;
struct TYPE_13__ {int n_sge; int type; TYPE_2__ xfer_rdy; TYPE_1__* sgl; scalar_t__ sge_offset; scalar_t__ first_data_sge; int def_sgl_count; int sgl_count; TYPE_1__ def_sgl; } ;
typedef TYPE_5__ ocs_hw_io_t ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 scalar_t__ OCS_TARGET_READ_SKIPS ;
 scalar_t__ OCS_TARGET_WRITE_SKIPS ;
 void* SLI4_SGE_TYPE_DATA ;
 void* SLI4_SGE_TYPE_SKIP ;
 void* TRUE ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 int ocs_log_err (int *,char*,...) ;
 int ocs_memset (TYPE_3__*,int ,int) ;

ocs_hw_rtn_e
ocs_hw_io_init_sges(ocs_hw_t *hw, ocs_hw_io_t *io, ocs_hw_io_type_e type)
{
 sli4_sge_t *data = ((void*)0);
 uint32_t i = 0;
 uint32_t skips = 0;

 if (!hw || !io) {
  ocs_log_err(hw ? hw->os : ((void*)0), "bad parameter hw=%p io=%p\n",
       hw, io);
  return OCS_HW_RTN_ERROR;
 }


 io->sgl = &io->def_sgl;
 io->sgl_count = io->def_sgl_count;
 io->first_data_sge = 0;

 ocs_memset(io->sgl->virt, 0, 2 * sizeof(sli4_sge_t));
 io->n_sge = 0;
 io->sge_offset = 0;

 io->type = type;

 data = io->sgl->virt;





 switch (type) {
 case 132:
 case 131:
 case 133:





  data->sge_type = SLI4_SGE_TYPE_DATA;
  data++;


  data->sge_type = SLI4_SGE_TYPE_DATA;

  if (133 == type) {
   data->last = TRUE;
  }
  data++;

  io->n_sge = 2;
  break;
 case 128:

  skips = 2;


  data->sge_type = SLI4_SGE_TYPE_DATA;
  data->buffer_address_high = ocs_addr32_hi(io->xfer_rdy.phys);
  data->buffer_address_low = ocs_addr32_lo(io->xfer_rdy.phys);
  data->buffer_length = io->xfer_rdy.size;
  data++;

  skips--;

  io->n_sge = 1;
  break;
 case 130:




  skips = 2;
  break;
 case 129:



  break;
 default:
  ocs_log_err(hw->os, "unsupported IO type %#x\n", type);
  return OCS_HW_RTN_ERROR;
 }




 for (i = 0; i < skips; i++) {
  data->sge_type = SLI4_SGE_TYPE_SKIP;
  data++;
 }

 io->n_sge += skips;




 data->last = TRUE;

 return OCS_HW_RTN_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int buffer_length; void* buffer_address_low; void* buffer_address_high; } ;
typedef TYPE_2__ sli4_sge_t ;
typedef int ocs_hw_t ;
struct TYPE_9__ {TYPE_2__* virt; } ;
struct TYPE_11__ {TYPE_1__ def_sgl; } ;
typedef TYPE_3__ ocs_hw_io_t ;
struct TYPE_12__ {int size; int phys; } ;
typedef TYPE_4__ ocs_dma_t ;
typedef int int32_t ;


 int OCS_HW_RTN_ERROR ;
 void* ocs_addr32_hi (int ) ;
 void* ocs_addr32_lo (int ) ;
 int ocs_log_err (int *,char*,int *,TYPE_3__*) ;

__attribute__((used)) static int32_t
ocs_hw_io_ini_sge(ocs_hw_t *hw, ocs_hw_io_t *io, ocs_dma_t *cmnd, uint32_t cmnd_size,
  ocs_dma_t *rsp)
{
 sli4_sge_t *data = ((void*)0);

 if (!hw || !io) {
  ocs_log_err(((void*)0), "bad parm hw=%p io=%p\n", hw, io);
  return OCS_HW_RTN_ERROR;
 }

 data = io->def_sgl.virt;


 data->buffer_address_high = ocs_addr32_hi(cmnd->phys);
 data->buffer_address_low = ocs_addr32_lo(cmnd->phys);
 data->buffer_length = cmnd_size;
 data++;


 data->buffer_address_high = ocs_addr32_hi(rsp->phys);
 data->buffer_address_low = ocs_addr32_lo(rsp->phys);
 data->buffer_length = rsp->size;

 return 0;
}

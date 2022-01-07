
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int ocs_io_t ;
typedef int ocs_dma_t ;
typedef int int32_t ;



int32_t ocs_scsi_recv_cmd_first_burst(ocs_io_t *io, uint64_t lun, uint8_t *cdb,
      uint32_t cdb_len, uint32_t flags,
     ocs_dma_t first_burst_buffers[],
     uint32_t first_burst_buffer_count)
{
 return -1;
}

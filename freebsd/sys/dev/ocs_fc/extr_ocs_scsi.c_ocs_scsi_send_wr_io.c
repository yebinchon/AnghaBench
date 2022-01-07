
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int ocs_scsi_sgl_t ;
typedef int ocs_scsi_rsp_io_cb_t ;
typedef int ocs_scsi_dif_info_t ;
typedef int ocs_node_t ;
typedef int ocs_io_t ;
typedef int int32_t ;


 int OCS_HW_IO_INITIATOR_WRITE ;
 int ocs_scsi_send_io (int ,int *,int *,int ,int ,void*,int ,int *,int *,int ,int ,int ,int ,void*) ;

int32_t ocs_scsi_send_wr_io(ocs_node_t *node, ocs_io_t *io, uint64_t lun, void *cdb, uint32_t cdb_len,
 ocs_scsi_dif_info_t *dif_info,
 ocs_scsi_sgl_t *sgl, uint32_t sgl_count, uint32_t wire_len,
 ocs_scsi_rsp_io_cb_t cb, void *arg)
{
 int32_t rc;

 rc = ocs_scsi_send_io(OCS_HW_IO_INITIATOR_WRITE, node, io, lun, 0, cdb, cdb_len, dif_info, sgl, sgl_count,
         wire_len, 0, cb, arg);

 return rc;
}

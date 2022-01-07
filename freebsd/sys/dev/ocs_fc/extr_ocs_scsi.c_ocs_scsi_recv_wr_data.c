
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_scsi_sgl_t ;
typedef int ocs_scsi_io_cb_t ;
typedef int ocs_scsi_dif_info_t ;
struct TYPE_4__ {int ocs; } ;
typedef TYPE_1__ ocs_io_t ;
typedef int int32_t ;


 int OCS_HW_IO_TARGET_WRITE ;
 int enable_treceive_auto_resp (int ) ;
 int ocs_scsi_xfer_data (TYPE_1__*,int ,int *,int *,int ,int ,int ,int ,int ,void*) ;

int32_t
ocs_scsi_recv_wr_data(ocs_io_t *io, uint32_t flags,
 ocs_scsi_dif_info_t *dif_info,
 ocs_scsi_sgl_t *sgl, uint32_t sgl_count, uint32_t len,
 ocs_scsi_io_cb_t cb, void *arg)
{
 return ocs_scsi_xfer_data(io, flags, dif_info, sgl, sgl_count, len, OCS_HW_IO_TARGET_WRITE,
      enable_treceive_auto_resp(io->ocs), cb, arg);
}

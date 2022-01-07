
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_scsi_io_status_e ;
typedef int ocs_io_t ;
typedef int int32_t ;


 int ocs_scsi_io_complete (int *) ;

__attribute__((used)) static int32_t
ocs_target_tmf_cb(ocs_io_t *io, ocs_scsi_io_status_e scsi_status, uint32_t flags,
  void *arg)
{



 ocs_scsi_io_complete(io);

 return 0;
}

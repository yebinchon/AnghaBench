
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvme_completion {int status; } ;
struct mpr_softc {int dummy; } ;
struct mpr_command {scalar_t__ cm_sense; scalar_t__ cm_reply; } ;
struct TYPE_2__ {int ErrorResponseCount; } ;
typedef TYPE_1__ Mpi26NVMeEncapsulatedErrorReply_t ;


 int MPI2_SCSI_STATUS_GOOD ;
 scalar_t__ le16toh (int ) ;
 int mprsas_nvme_trans_status_code (int ,struct mpr_command*) ;

__attribute__((used)) static u8
mprsas_complete_nvme_unmap(struct mpr_softc *sc, struct mpr_command *cm)
{
 Mpi26NVMeEncapsulatedErrorReply_t *mpi_reply;
 struct nvme_completion *nvme_completion = ((void*)0);
 u8 scsi_status = MPI2_SCSI_STATUS_GOOD;

 mpi_reply =(Mpi26NVMeEncapsulatedErrorReply_t *)cm->cm_reply;
 if (le16toh(mpi_reply->ErrorResponseCount)){
  nvme_completion = (struct nvme_completion *)cm->cm_sense;
  scsi_status = mprsas_nvme_trans_status_code(
      nvme_completion->status, cm);
 }
 return scsi_status;
}

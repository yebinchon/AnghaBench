
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mps_softc {int dummy; } ;
struct mps_command {scalar_t__ cm_req; } ;
struct TYPE_2__ {int SGLOffset0; } ;
typedef TYPE_1__ MPI2_SCSI_IO_REQUEST ;


 int mps_print_sgl (struct mps_softc*,struct mps_command*,int ) ;

void
mps_print_scsiio_cmd(struct mps_softc *sc, struct mps_command *cm)
{
 MPI2_SCSI_IO_REQUEST *req;

 req = (MPI2_SCSI_IO_REQUEST *)cm->cm_req;
 mps_print_sgl(sc, cm, req->SGLOffset0);
}

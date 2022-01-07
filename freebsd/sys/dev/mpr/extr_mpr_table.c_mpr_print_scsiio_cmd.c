
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpr_softc {int dummy; } ;
struct mpr_command {scalar_t__ cm_req; } ;
struct TYPE_2__ {int SGLOffset0; } ;
typedef TYPE_1__ MPI2_SCSI_IO_REQUEST ;


 int mpr_print_sgl (struct mpr_softc*,struct mpr_command*,int ) ;

void
mpr_print_scsiio_cmd(struct mpr_softc *sc, struct mpr_command *cm)
{
 MPI2_SCSI_IO_REQUEST *req;

 req = (MPI2_SCSI_IO_REQUEST *)cm->cm_req;
 mpr_print_sgl(sc, cm, req->SGLOffset0);
}

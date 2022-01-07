
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scb {TYPE_3__* hscb; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_4__ {scalar_t__ scsi_status; } ;
struct TYPE_5__ {TYPE_1__ istatus; } ;
struct TYPE_6__ {TYPE_2__ shared_data; } ;


 int ahd_calc_residual (struct ahd_softc*,struct scb*) ;
 int ahd_done (struct ahd_softc*,struct scb*) ;
 int ahd_handle_scsi_status (struct ahd_softc*,struct scb*) ;

void
ahd_handle_scb_status(struct ahd_softc *ahd, struct scb *scb)
{
 if (scb->hscb->shared_data.istatus.scsi_status != 0) {
  ahd_handle_scsi_status(ahd, scb);
 } else {
  ahd_calc_residual(ahd, scb);
  ahd_done(ahd, scb);
 }
}

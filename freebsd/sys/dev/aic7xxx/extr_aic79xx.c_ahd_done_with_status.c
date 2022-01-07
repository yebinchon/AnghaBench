
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scb {int dummy; } ;
struct ahd_softc {int dummy; } ;
typedef scalar_t__ cam_status ;


 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_REQ_INPROG ;
 int ahd_done (struct ahd_softc*,struct scb*) ;
 int aic_freeze_scb (struct scb*) ;
 scalar_t__ aic_get_transaction_status (struct scb*) ;
 int aic_set_transaction_status (struct scb*,int ) ;

void
ahd_done_with_status(struct ahd_softc *ahd, struct scb *scb, uint32_t status)
{
 cam_status ostat;
 cam_status cstat;

 ostat = aic_get_transaction_status(scb);
 if (ostat == CAM_REQ_INPROG)
  aic_set_transaction_status(scb, status);
 cstat = aic_get_transaction_status(scb);
 if (cstat != CAM_REQ_CMP)
  aic_freeze_scb(scb);
 ahd_done(ahd, scb);
}

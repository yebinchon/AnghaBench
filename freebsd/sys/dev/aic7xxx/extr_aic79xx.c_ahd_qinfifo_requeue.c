
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct scb {TYPE_2__* hscb; } ;
struct ahd_softc {TYPE_1__* next_queued_hscb; int qinfifonext; int * qinfifo; } ;
struct TYPE_4__ {int next_hscb_busaddr; int hscb_busaddr; } ;
struct TYPE_3__ {int hscb_busaddr; } ;


 size_t AHD_QIN_WRAP (int ) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int NEXT_QUEUED_SCB_ADDR ;
 int SCB_GET_TAG (struct scb*) ;
 int ahd_outl (struct ahd_softc*,int ,int ) ;
 int ahd_sync_scb (struct ahd_softc*,struct scb*,int) ;
 int aic_le32toh (int ) ;

__attribute__((used)) static void
ahd_qinfifo_requeue(struct ahd_softc *ahd, struct scb *prev_scb,
      struct scb *scb)
{
 if (prev_scb == ((void*)0)) {
  uint32_t busaddr;

  busaddr = aic_le32toh(scb->hscb->hscb_busaddr);
  ahd_outl(ahd, NEXT_QUEUED_SCB_ADDR, busaddr);
 } else {
  prev_scb->hscb->next_hscb_busaddr = scb->hscb->hscb_busaddr;
  ahd_sync_scb(ahd, prev_scb,
        BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);
 }
 ahd->qinfifo[AHD_QIN_WRAP(ahd->qinfifonext)] = SCB_GET_TAG(scb);
 ahd->qinfifonext++;
 scb->hscb->next_hscb_busaddr = ahd->next_queued_hscb->hscb_busaddr;
 ahd_sync_scb(ahd, scb, BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);
}

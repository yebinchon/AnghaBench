
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int dummy; } ;
struct ahc_softc {int dummy; } ;


 int CAM_REQUEUE_REQ ;
 int ROLE_UNKNOWN ;
 char SCB_GET_CHANNEL (struct ahc_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahc_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int SEARCH_COMPLETE ;
 int ahc_platform_freeze_devq (struct ahc_softc*,struct scb*) ;
 int ahc_search_qinfifo (struct ahc_softc*,int,char,int,int ,int ,int ,int ) ;

void
ahc_freeze_devq(struct ahc_softc *ahc, struct scb *scb)
{
 int target;
 char channel;
 int lun;

 target = SCB_GET_TARGET(ahc, scb);
 lun = SCB_GET_LUN(scb);
 channel = SCB_GET_CHANNEL(ahc, scb);

 ahc_search_qinfifo(ahc, target, channel, lun,
             SCB_LIST_NULL, ROLE_UNKNOWN,
      CAM_REQUEUE_REQ, SEARCH_COMPLETE);

 ahc_platform_freeze_devq(ahc, scb);
}

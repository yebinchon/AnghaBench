
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int dummy; } ;
struct ahd_softc {int dummy; } ;


 int CAM_REQUEUE_REQ ;
 int ROLE_UNKNOWN ;
 char SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int SEARCH_COMPLETE ;
 int ahd_platform_freeze_devq (struct ahd_softc*,struct scb*) ;
 int ahd_search_qinfifo (struct ahd_softc*,int,char,int,int ,int ,int ,int ) ;

void
ahd_freeze_devq(struct ahd_softc *ahd, struct scb *scb)
{
 int target;
 char channel;
 int lun;

 target = SCB_GET_TARGET(ahd, scb);
 lun = SCB_GET_LUN(scb);
 channel = SCB_GET_CHANNEL(ahd, scb);

 ahd_search_qinfifo(ahd, target, channel, lun,
             SCB_LIST_NULL, ROLE_UNKNOWN,
      CAM_REQUEUE_REQ, SEARCH_COMPLETE);

 ahd_platform_freeze_devq(ahd, scb);
}

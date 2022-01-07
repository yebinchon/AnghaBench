
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
typedef int request_t ;
struct TYPE_3__ {int Event; int EventDataLength; int * Data; int IOCLogInfo; } ;
typedef TYPE_1__ MSG_EVENT_NOTIFY_REPLY ;






 int MPT_PRT_DEBUG ;
 int mpt_lprt (struct mpt_softc*,int ,char*,int) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;
 int mpt_prtc (struct mpt_softc*,char*,...) ;

__attribute__((used)) static int
mpt_core_event(struct mpt_softc *mpt, request_t *req,
        MSG_EVENT_NOTIFY_REPLY *msg)
{

 mpt_lprt(mpt, MPT_PRT_DEBUG, "mpt_core_event: 0x%x\n",
                 msg->Event & 0xFF);
 switch(msg->Event & 0xFF) {
 case 129:
  break;
 case 130:
 {
  int i;


  mpt_prt(mpt, "EvtLogData: IOCLogInfo: 0x%08x\n",
   msg->IOCLogInfo);
  mpt_prt(mpt, "\tEvtLogData: Event Data:");
  for (i = 0; i < msg->EventDataLength; i++)
   mpt_prtc(mpt, "  %08x", msg->Data[i]);
  mpt_prtc(mpt, "\n");
  break;
 }
 case 131:




  break;
 case 128:
  break;
 default:
  return (0);
  break;
 }
 return (1);
}

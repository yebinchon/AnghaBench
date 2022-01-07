
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * sataEvents; int event_timer_connect; } ;
struct TYPE_7__ {int adapterId; TYPE_2__* IALData; } ;
typedef size_t MV_U8 ;
typedef size_t MV_U32 ;
typedef TYPE_1__ MV_SATA_ADAPTER ;
typedef int MV_EVENT_TYPE ;
typedef int MV_BOOLEAN ;
typedef TYPE_2__ IAL_ADAPTER_T ;


 size_t EVENT_CONNECT ;
 size_t EVENT_DISCONNECT ;
 int FALSE ;
 int KdPrint (char*) ;
 int MV_ERROR (char*,size_t,int) ;


 int MV_FALSE ;
 int MV_TRUE ;
 int SATA_EVENT_CHANNEL_CONNECTED ;
 int SATA_EVENT_CHANNEL_DISCONNECTED ;
 int callout_reset (int *,int,int ,TYPE_2__*) ;
 int device_change (TYPE_2__*,size_t,int ) ;
 int hptmv_handle_event_connect ;
 int hptmv_handle_event_disconnect (TYPE_2__*) ;
 int hz ;

__attribute__((used)) static MV_BOOLEAN
hptmv_event_notify(MV_SATA_ADAPTER *pMvSataAdapter, MV_EVENT_TYPE eventType,
           MV_U32 param1, MV_U32 param2)
{
 IAL_ADAPTER_T *pAdapter = pMvSataAdapter->IALData;

 switch (eventType)
 {
  case 128:
   {
    MV_U8 channel = param2;

    if (param1 == EVENT_CONNECT)
    {
     pAdapter->sataEvents[channel] = SATA_EVENT_CHANNEL_CONNECTED;
     KdPrint(("RR18xx [%d,%d]: device connected event received\n",
        pMvSataAdapter->adapterId, channel));

     callout_reset(&pAdapter->event_timer_connect, 10 * hz, hptmv_handle_event_connect, pAdapter);
    }
    else if (param1 == EVENT_DISCONNECT)
    {
     pAdapter->sataEvents[channel] = SATA_EVENT_CHANNEL_DISCONNECTED;
     KdPrint(("RR18xx [%d,%d]: device disconnected event received \n",
        pMvSataAdapter->adapterId, channel));
     device_change(pAdapter, channel, FALSE);



     hptmv_handle_event_disconnect(pAdapter);
    }
    else
    {

     MV_ERROR("RR18xx: illegal value for param1(%d) at "
        "connect/disconnect event, host=%d\n", param1,
        pMvSataAdapter->adapterId );

    }
   }
   break;
  case 129:
   KdPrint(("RR18xx: DEVICE error event received, pci cause "
       "reg=%x,  don't how to handle this\n", param1));
   return MV_TRUE;
  default:
   MV_ERROR("RR18xx[%d]: unknown event type (%d)\n",
      pMvSataAdapter->adapterId, eventType);
   return MV_FALSE;
 }
 return MV_TRUE;
}

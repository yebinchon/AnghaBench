
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct mps_softc {int* events_to_record; int event_index; TYPE_1__* recorded_events; scalar_t__ event_number; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int Event; int EventDataLength; int * EventData; } ;
struct TYPE_4__ {int Type; int * Data; scalar_t__ Number; } ;
typedef TYPE_2__ MPI2_EVENT_NOTIFICATION_REPLY ;


 scalar_t__ FALSE ;
 int MPI2_EVENT_LOG_ENTRY_ADDED ;
 int MPS_EVENT_QUEUE_SIZE ;
 int MPS_MAX_EVENT_DATA_LENGTH ;
 scalar_t__ TRUE ;
 int bzero (int *,int) ;

void
mpssas_record_event(struct mps_softc *sc,
    MPI2_EVENT_NOTIFICATION_REPLY *event_reply)
{
 uint32_t event;
 int i, j;
 uint16_t event_data_len;
 boolean_t sendAEN = FALSE;

 event = event_reply->Event;






 if (event == MPI2_EVENT_LOG_ENTRY_ADDED) {
  sendAEN = TRUE;
 }
 i = (uint8_t)(event / 32);
 j = (uint8_t)(event % 32);
 if ((i < 4) && ((1 << j) & sc->events_to_record[i])) {
  i = sc->event_index;
  sc->recorded_events[i].Type = event;
  sc->recorded_events[i].Number = ++sc->event_number;
  bzero(sc->recorded_events[i].Data, MPS_MAX_EVENT_DATA_LENGTH *
      4);
  event_data_len = event_reply->EventDataLength;

  if (event_data_len > 0) {



   if (event_data_len > MPS_MAX_EVENT_DATA_LENGTH) {
    event_data_len = MPS_MAX_EVENT_DATA_LENGTH;
   }
   for (j = 0; j < event_data_len; j++) {
    sc->recorded_events[i].Data[j] =
        event_reply->EventData[j];
   }




   if (++i == MPS_EVENT_QUEUE_SIZE) {
    i = 0;
   }
   sc->event_index = (uint8_t)i;




   sendAEN = TRUE;
  }
 }





 if (sendAEN) {



 }
}

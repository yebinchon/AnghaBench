
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PHPT_EVENT ;


 size_t MAX_EVENTS ;
 size_t event_queue_head ;
 size_t event_queue_tail ;
 int * hpt_event_queue ;

__attribute__((used)) static int
event_queue_remove(PHPT_EVENT pEvent)
{
 if (event_queue_head != event_queue_tail)
 {
  *pEvent = hpt_event_queue[event_queue_head];
  event_queue_head++;
  event_queue_head %= MAX_EVENTS;
  return 0;
 }
 return -1;
}

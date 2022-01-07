
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PHPT_EVENT ;


 int MAX_EVENTS ;
 int event_queue_head ;
 int event_queue_tail ;
 int * hpt_event_queue ;

__attribute__((used)) static int
event_queue_add(PHPT_EVENT pEvent)
{
 int p;
 p = (event_queue_tail + 1) % MAX_EVENTS;
 if (p==event_queue_head)
 {
  return -1;
 }
 hpt_event_queue[event_queue_tail] = *pEvent;
 event_queue_tail = p;
 return 0;
}

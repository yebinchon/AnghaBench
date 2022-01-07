
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pqisrc_ack_all_events (void*) ;

void pqisrc_event_worker(void *arg1, int arg2)
{
 pqisrc_ack_all_events(arg1);
}

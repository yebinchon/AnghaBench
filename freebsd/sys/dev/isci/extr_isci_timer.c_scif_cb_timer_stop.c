
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_TIMER {int callout; int is_started; } ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int FALSE ;
 int callout_stop (int *) ;
 int isci_log_message (int,char*,char*,void*) ;

void
scif_cb_timer_stop(SCI_CONTROLLER_HANDLE_T controller, void *timer)
{
 struct ISCI_TIMER *isci_timer = (struct ISCI_TIMER *)timer;

 isci_log_message(3, "TIMER", "stop %p\n", timer);
 isci_timer->is_started = FALSE;
 callout_stop(&isci_timer->callout);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ISCI_TIMER {int callout; int is_started; } ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int SBT_1MS ;
 int TRUE ;
 int callout_reset_sbt (int *,int,int ,int ,void*,int ) ;
 int isci_log_message (int,char*,char*,void*,int) ;
 int isci_timer_timeout ;

void
scif_cb_timer_start(SCI_CONTROLLER_HANDLE_T controller, void *timer,
    uint32_t milliseconds)
{
 struct ISCI_TIMER *isci_timer = (struct ISCI_TIMER *)timer;

 isci_timer->is_started = TRUE;
 isci_log_message(3, "TIMER", "start %p %d\n", timer, milliseconds);
 callout_reset_sbt(&isci_timer->callout, SBT_1MS * milliseconds, 0,
     isci_timer_timeout, timer, 0);
}

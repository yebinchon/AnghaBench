
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_TIMER {int dummy; } ;
struct ISCI_CONTROLLER {int timer_pool; } ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int isci_log_message (int,char*,char*,void*) ;
 scalar_t__ sci_object_get_association (int ) ;
 int sci_pool_put (int ,struct ISCI_TIMER*) ;
 int scif_cb_timer_stop (int ,void*) ;

void
scif_cb_timer_destroy(SCI_CONTROLLER_HANDLE_T scif_controller,
    void *timer_handle)
{
 struct ISCI_CONTROLLER *isci_controller = (struct ISCI_CONTROLLER *)
     sci_object_get_association(scif_controller);

 scif_cb_timer_stop(scif_controller, timer_handle);
 sci_pool_put(isci_controller->timer_pool, (struct ISCI_TIMER *)timer_handle);

 isci_log_message(3, "TIMER", "destroy %p\n", timer_handle);
}

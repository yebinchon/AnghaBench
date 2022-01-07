
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct isci_softc {int sci_library_handle; } ;
struct ISCI_TIMER {int dummy; } ;
struct ISCI_CONTROLLER {int unmap_buffer_pool; int timer_pool; scalar_t__ timer_memory; int * domain; int lock; int pending_device_reset_list; scalar_t__ initial_discovery_mask; int * sim; void* release_queued_ccbs; void* is_frozen; void* is_started; int scif_controller_handle; struct isci_softc* isci; } ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 void* FALSE ;
 int MTX_DEF ;
 int M_ISCI ;
 int M_NOWAIT ;
 int M_ZERO ;
 size_t SCI_MAX_DOMAINS ;
 int SCI_MAX_TIMERS ;
 int isci_domain_construct (int *,size_t,struct ISCI_CONTROLLER*) ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sci_fast_list_init (int *) ;
 int sci_object_set_association (int ,void*) ;
 int sci_pool_initialize (int ) ;
 int sci_pool_put (int ,int ) ;
 int scif_controller_construct (int ,int ,int *) ;
 int scif_library_allocate_controller (int ,int *) ;

void isci_controller_construct(struct ISCI_CONTROLLER *controller,
    struct isci_softc *isci)
{
 SCI_CONTROLLER_HANDLE_T scif_controller_handle;

 scif_library_allocate_controller(isci->sci_library_handle,
     &scif_controller_handle);

 scif_controller_construct(isci->sci_library_handle,
     scif_controller_handle, ((void*)0));

 controller->isci = isci;
 controller->scif_controller_handle = scif_controller_handle;





 sci_object_set_association(scif_controller_handle, (void *)controller);

 controller->is_started = FALSE;
 controller->is_frozen = FALSE;
 controller->release_queued_ccbs = FALSE;
 controller->sim = ((void*)0);
 controller->initial_discovery_mask = 0;

 sci_fast_list_init(&controller->pending_device_reset_list);

 mtx_init(&controller->lock, "isci", ((void*)0), MTX_DEF);

 uint32_t domain_index;

 for(domain_index = 0; domain_index < SCI_MAX_DOMAINS; domain_index++) {
  isci_domain_construct( &controller->domain[domain_index],
      domain_index, controller);
 }

 controller->timer_memory = malloc(
     sizeof(struct ISCI_TIMER) * SCI_MAX_TIMERS, M_ISCI,
     M_NOWAIT | M_ZERO);

 sci_pool_initialize(controller->timer_pool);

 struct ISCI_TIMER *timer = (struct ISCI_TIMER *)
     controller->timer_memory;

 for ( int i = 0; i < SCI_MAX_TIMERS; i++ ) {
  sci_pool_put(controller->timer_pool, timer++);
 }

 sci_pool_initialize(controller->unmap_buffer_pool);
}

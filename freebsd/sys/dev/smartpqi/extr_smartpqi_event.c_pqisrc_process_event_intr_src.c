
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct pqi_event {int pending; int additional_event_id; int event_id; int event_type; } ;
struct TYPE_13__ {int ci_local; int* pi_virt_addr; int elem_size; int num_elem; int ci_register_offset; int ci_register_abs; scalar_t__ array_virt_addr; } ;
struct TYPE_11__ {struct pqi_event* pending_events; TYPE_4__ event_q; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_10__ {int iu_type; } ;
struct TYPE_12__ {int additional_event_id; int event_id; int event_type; scalar_t__ request_acknowledge; TYPE_1__ header; } ;
typedef TYPE_3__ pqi_event_response_t ;
typedef TYPE_4__ ob_queue_t ;
typedef int boolean_t ;


 int DBG_FUNC (char*) ;
 int DBG_INFO (char*,int,...) ;
 int OS_ATOMIC64_INC (TYPE_2__*,int ) ;
 int PCI_MEM_PUT32 (TYPE_2__*,int ,int ,int) ;
 int PQI_STATUS_SUCCESS ;
 int memcpy (TYPE_3__*,scalar_t__,int) ;
 int num_intrs ;
 int os_eventtaskqueue_enqueue (TYPE_2__*) ;
 int pqisrc_event_type_to_event_index (int ) ;

int
pqisrc_process_event_intr_src(pqisrc_softstate_t *softs,int obq_id)
{
 uint32_t obq_pi,obq_ci;
 pqi_event_response_t response;
 ob_queue_t *event_q;
 struct pqi_event *pending_event;
 boolean_t need_delayed_work = 0;

 DBG_FUNC(" IN\n");

 OS_ATOMIC64_INC(softs, num_intrs);

 event_q = &softs->event_q;
 obq_ci = event_q->ci_local;
 obq_pi = *(event_q->pi_virt_addr);
 DBG_INFO("Initial Event_q ci : %d Event_q pi : %d\n", obq_ci, obq_pi);

 while(1) {
  int event_index;
  DBG_INFO("queue_id : %d ci : %d pi : %d\n",obq_id, obq_ci, obq_pi);
  if (obq_pi == obq_ci)
   break;

  need_delayed_work = 1;


  memcpy(&response, event_q->array_virt_addr + (obq_ci * event_q->elem_size),
     sizeof(pqi_event_response_t));
  DBG_INFO("response.header.iu_type : 0x%x \n", response.header.iu_type);
  DBG_INFO("response.event_type : 0x%x \n", response.event_type);

  event_index = pqisrc_event_type_to_event_index(response.event_type);

  if (event_index >= 0) {
   if(response.request_acknowledge) {
    pending_event = &softs->pending_events[event_index];
    pending_event->pending = 1;
    pending_event->event_type = response.event_type;
    pending_event->event_id = response.event_id;
    pending_event->additional_event_id = response.additional_event_id;
   }
  }

 obq_ci = (obq_ci + 1) % event_q->num_elem;
 }

 event_q->ci_local = obq_ci;
 PCI_MEM_PUT32(softs, event_q->ci_register_abs,
        event_q->ci_register_offset, event_q->ci_local);


 if (need_delayed_work == 1) {
  os_eventtaskqueue_enqueue(softs);
 }

 DBG_FUNC("OUT");
 return PQI_STATUS_SUCCESS;


}

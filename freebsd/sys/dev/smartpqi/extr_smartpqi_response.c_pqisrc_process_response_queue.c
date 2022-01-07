
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_13__ {int iu_type; } ;
struct pqi_io_response {size_t request_id; TYPE_1__ header; int error_index; } ;
struct TYPE_14__ {size_t tag; int req_pending; int status; int (* error_cmp_callback ) (TYPE_3__*,TYPE_2__*,int ) ;int (* success_cmp_callback ) (TYPE_3__*,TYPE_2__*) ;} ;
typedef TYPE_2__ rcb_t ;
struct TYPE_15__ {TYPE_2__* rcb; TYPE_4__* op_ob_q; } ;
typedef TYPE_3__ pqisrc_softstate_t ;
struct TYPE_16__ {size_t ci_local; size_t* pi_virt_addr; size_t elem_size; size_t num_elem; int ci_register_offset; int ci_register_abs; scalar_t__ array_virt_addr; int q_id; } ;
typedef TYPE_4__ ob_queue_t ;


 int ASSERT (int) ;
 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 int DBG_INFO (char*,int,...) ;
 int LE_16 (int ) ;
 int OS_ATOMIC64_INC (TYPE_3__*,int ) ;
 int PCI_MEM_PUT32 (TYPE_3__*,int ,int ,size_t) ;






 int num_intrs ;
 int pqisrc_process_task_management_response (TYPE_3__*,void*) ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;
 int stub2 (TYPE_3__*,TYPE_2__*,int ) ;

void
pqisrc_process_response_queue(pqisrc_softstate_t *softs, int oq_id)
{
 ob_queue_t *ob_q;
 struct pqi_io_response *response;
 uint32_t oq_pi, oq_ci;

 DBG_FUNC("IN");

 OS_ATOMIC64_INC(softs, num_intrs);

 ob_q = &softs->op_ob_q[oq_id - 1];
 oq_ci = ob_q->ci_local;
 oq_pi = *(ob_q->pi_virt_addr);

 DBG_INFO("ci : %d pi : %d qid : %d\n", oq_ci, oq_pi, ob_q->q_id);

 while (1) {
  rcb_t *rcb = ((void*)0);
  uint32_t tag = 0;
  uint32_t offset;

  if (oq_pi == oq_ci)
   break;

  offset = oq_ci * ob_q->elem_size;
  response = (struct pqi_io_response *)(ob_q->array_virt_addr +
       offset);
  tag = response->request_id;
  rcb = &softs->rcb[tag];

  ASSERT(rcb->tag == tag && rcb->req_pending);
  rcb->req_pending = 0;

  DBG_INFO("response.header.iu_type : %x \n", response->header.iu_type);

  switch (response->header.iu_type) {
  case 129:
  case 132:
   rcb->success_cmp_callback(softs, rcb);
   break;
  case 130:
  case 133:
   rcb->error_cmp_callback(softs, rcb, LE_16(response->error_index));
   break;
  case 131:
   rcb->req_pending = 0;
   break;
  case 128:
   rcb->status = pqisrc_process_task_management_response(softs, (void *)response);
   break;

  default:
   DBG_ERR("Invalid Response IU 0x%x\n",response->header.iu_type);
   break;
  }

  oq_ci = (oq_ci + 1) % ob_q->num_elem;
 }

 ob_q->ci_local = oq_ci;
 PCI_MEM_PUT32(softs, ob_q->ci_register_abs,
        ob_q->ci_register_offset, ob_q->ci_local );
 DBG_FUNC("OUT");
}

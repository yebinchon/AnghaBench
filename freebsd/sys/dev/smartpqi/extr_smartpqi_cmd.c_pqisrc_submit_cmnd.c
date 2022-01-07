
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pqisrc_softstate_t ;
struct TYPE_4__ {int iu_length; } ;
typedef TYPE_1__ iu_header_t ;
struct TYPE_5__ {int pi_local; int num_elem; int* ci_virt_addr; int elem_size; char* array_virt_addr; int lock; int pi_register_offset; int pi_register_abs; } ;
typedef TYPE_2__ ib_queue_t ;


 int DBG_FUNC (char*) ;
 int DBG_INFO (char*,...) ;
 int DBG_WARN (char*) ;
 int PCI_MEM_PUT32 (int *,int ,int ,int) ;
 int PQI_LOCK (int *) ;
 int PQI_STATUS_QFULL ;
 int PQI_STATUS_SUCCESS ;
 int PQI_UNLOCK (int *) ;
 int memcpy (char*,void*,int) ;

int pqisrc_submit_cmnd(pqisrc_softstate_t *softs,
    ib_queue_t *ib_q, void *req)
{
 char *slot = ((void*)0);
 uint32_t offset;
 iu_header_t *hdr = (iu_header_t *)req;
 uint32_t iu_len = hdr->iu_length + 4 ;
 int i = 0;
 DBG_FUNC("IN\n");

 PQI_LOCK(&ib_q->lock);


 if ((ib_q->pi_local + 1) % ib_q->num_elem == *(ib_q->ci_virt_addr)) {
  DBG_WARN("OUT Q full\n");
 PQI_UNLOCK(&ib_q->lock);
  return PQI_STATUS_QFULL;
 }


 offset = ib_q->pi_local * ib_q->elem_size;
 slot = ib_q->array_virt_addr + offset;


 memcpy(slot, req, iu_len);
 DBG_INFO("IU : \n");
 for(i = 0; i< iu_len; i++)
  DBG_INFO(" IU [ %d ] : %x\n", i, *((unsigned char *)(slot + i)));


 ib_q->pi_local = (ib_q->pi_local + 1) % ib_q->num_elem;
 DBG_INFO("ib_q->pi_local : %x IU size : %d\n",
    ib_q->pi_local, hdr->iu_length);
 DBG_INFO("*ib_q->ci_virt_addr: %x\n",
    *(ib_q->ci_virt_addr));


 PCI_MEM_PUT32(softs, ib_q->pi_register_abs, ib_q->pi_register_offset, ib_q->pi_local);
 PQI_UNLOCK(&ib_q->lock);
 DBG_FUNC("OUT\n");
 return PQI_STATUS_SUCCESS;
}

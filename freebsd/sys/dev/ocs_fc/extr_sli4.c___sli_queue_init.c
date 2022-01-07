
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {int if_type; int os; } ;
typedef TYPE_1__ sli4_t ;
struct TYPE_10__ {TYPE_2__* virt; scalar_t__ size; } ;
struct TYPE_9__ {size_t size; size_t length; size_t type; size_t proc_limit; int posted_limit; int lock; TYPE_4__ dma; } ;
typedef TYPE_2__ sli4_queue_t ;
typedef int int32_t ;


 int SLI4_IF_TYPE_BE3_SKH_PF ;
 int SLI4_IF_TYPE_BE3_SKH_VF ;
 int * SLI_QNAME ;

 scalar_t__ ocs_dma_alloc (int ,TYPE_4__*,size_t,size_t) ;
 int ocs_dma_free (int ,TYPE_4__*) ;
 int ocs_instance (int ) ;
 int ocs_lock_init (int ,int *,char*,int ,int ,int *) ;
 int ocs_log_err (int ,char*,int ) ;
 int ocs_memset (TYPE_2__*,int ,size_t) ;

int32_t
__sli_queue_init(sli4_t *sli4, sli4_queue_t *q, uint32_t qtype,
  size_t size, uint32_t n_entries, uint32_t align)
{

 if ((q->dma.virt == ((void*)0)) || (size != q->size) || (n_entries != q->length)) {
  if (q->dma.size) {
   ocs_dma_free(sli4->os, &q->dma);
  }

  ocs_memset(q, 0, sizeof(sli4_queue_t));

  if (ocs_dma_alloc(sli4->os, &q->dma, size * n_entries, align)) {
   ocs_log_err(sli4->os, "%s allocation failed\n", SLI_QNAME[qtype]);
   return -1;
  }

  ocs_memset(q->dma.virt, 0, size * n_entries);

  ocs_lock_init(sli4->os, &q->lock, "%s lock[%d:%p]",
   SLI_QNAME[qtype], ocs_instance(sli4->os), &q->lock);

  q->type = qtype;
  q->size = size;
  q->length = n_entries;


  q->proc_limit = n_entries / 2;

  switch(q->type) {
  case 128:
   q->posted_limit = q->length / 2;
   break;
  default:
   if ((sli4->if_type == SLI4_IF_TYPE_BE3_SKH_PF) ||
       (sli4->if_type == SLI4_IF_TYPE_BE3_SKH_VF)) {

    q->posted_limit = 8;
   } else {
    q->posted_limit = 64;
   }
   break;
  }
 }

 return 0;
}

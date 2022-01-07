
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int* max_qentries; int * count_mask; int * count_method; } ;
struct TYPE_6__ {TYPE_1__ config; int os; } ;
typedef TYPE_2__ sli4_t ;
typedef size_t sli4_qtype_e ;


 int SLI_PAGE_SIZE ;
 int * SLI_QNAME ;
 size_t SLI_QTYPE_EQ ;
 size_t SLI_QTYPE_MAX ;
 int ocs_log_debug (int ,char*,int ,int,int,int) ;
 int ocs_max_dma_alloc (int ,int ) ;
 int sli_convert_mask_to_count (int ,int ) ;
 int sli_get_queue_entry_size (TYPE_2__*,size_t) ;

void
sli_calc_max_qentries(sli4_t *sli4)
{
 sli4_qtype_e q;
 uint32_t alloc_size, qentries, qentry_size;

 for (q = SLI_QTYPE_EQ; q < SLI_QTYPE_MAX; q++) {
  sli4->config.max_qentries[q] = sli_convert_mask_to_count(sli4->config.count_method[q],
          sli4->config.count_mask[q]);
 }





 for (q = SLI_QTYPE_EQ; q < SLI_QTYPE_MAX; q++) {
  qentries = sli4->config.max_qentries[q];
  qentry_size = sli_get_queue_entry_size(sli4, q);
  alloc_size = qentries * qentry_size;
  if (alloc_size > ocs_max_dma_alloc(sli4->os, SLI_PAGE_SIZE)) {
   while (alloc_size > ocs_max_dma_alloc(sli4->os, SLI_PAGE_SIZE)) {

    qentries >>= 1;
    alloc_size = qentries * qentry_size;
   }
   ocs_log_debug(sli4->os, "[%s]: max_qentries from %d to %d (max dma %d)\n",
    SLI_QNAME[q], sli4->config.max_qentries[q],
    qentries, ocs_max_dma_alloc(sli4->os, SLI_PAGE_SIZE));
   sli4->config.max_qentries[q] = qentries;
  }
 }
}

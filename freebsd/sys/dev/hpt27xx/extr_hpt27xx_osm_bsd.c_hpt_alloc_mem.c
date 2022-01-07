
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct freelist {int count; int size; void** head; int alignment; int tag; struct freelist* next; } ;
struct TYPE_7__ {int him_handle; TYPE_1__* him; } ;
struct TYPE_9__ {TYPE_2__ ldm_adapter; struct TYPE_9__* next; } ;
struct TYPE_8__ {scalar_t__ vbus; struct freelist* freelist_dma_head; struct freelist* freelist_head; TYPE_4__* hba_list; } ;
struct TYPE_6__ {int (* get_meminfo ) (int ) ;} ;
typedef TYPE_3__* PVBUS_EXT ;
typedef int PVBUS ;
typedef TYPE_4__* PHBA ;
typedef int HPT_UPTR ;
typedef scalar_t__ HPT_UINT ;
typedef scalar_t__ BUS_ADDRESS ;


 int DMAPOOL_PAGE_SIZE ;
 int ENXIO ;
 int HPT_ASSERT (int) ;
 int KdPrint (char*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_pages (int) ;
 int dmapool_put_page (int ,void**,scalar_t__) ;
 int ldm_get_mem_info (int ,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 scalar_t__ os_max_cache_pages ;
 int stub1 (int ) ;
 scalar_t__ vtophys (void**) ;

__attribute__((used)) static int hpt_alloc_mem(PVBUS_EXT vbus_ext)
{
 PHBA hba;
 struct freelist *f;
 HPT_UINT i;
 void **p;

 for (hba = vbus_ext->hba_list; hba; hba = hba->next)
  hba->ldm_adapter.him->get_meminfo(hba->ldm_adapter.him_handle);

 ldm_get_mem_info((PVBUS)vbus_ext->vbus, 0);

 for (f=vbus_ext->freelist_head; f; f=f->next) {
  KdPrint(("%s: %d*%d=%d bytes",
   f->tag, f->count, f->size, f->count*f->size));
  for (i=0; i<f->count; i++) {
   p = (void **)malloc(f->size, M_DEVBUF, M_WAITOK);
   if (!p) return (ENXIO);
   *p = f->head;
   f->head = p;
  }
 }

 for (f=vbus_ext->freelist_dma_head; f; f=f->next) {
  int order, size, j;

  HPT_ASSERT((f->size & (f->alignment-1))==0);

  for (order=0, size=PAGE_SIZE; size<f->size; order++, size<<=1)
   ;

  KdPrint(("%s: %d*%d=%d bytes, order %d",
   f->tag, f->count, f->size, f->count*f->size, order));
  HPT_ASSERT(f->alignment<=PAGE_SIZE);

  for (i=0; i<f->count;) {
   p = (void **)__get_free_pages(order);
   if (!p) return -1;
   for (j = size/f->size; j && i<f->count; i++,j--) {
    *p = f->head;
    *(BUS_ADDRESS *)(p+1) = (BUS_ADDRESS)vtophys(p);
    f->head = p;
    p = (void **)((unsigned long)p + f->size);
   }
  }
 }

 HPT_ASSERT(PAGE_SIZE==DMAPOOL_PAGE_SIZE);

 for (i=0; i<os_max_cache_pages; i++) {
  p = (void **)__get_free_pages(0);
  if (!p) return -1;
  HPT_ASSERT(((HPT_UPTR)p & (DMAPOOL_PAGE_SIZE-1))==0);
  dmapool_put_page((PVBUS)vbus_ext->vbus, p, (BUS_ADDRESS)vtophys(p));
 }

 return 0;
}

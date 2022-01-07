
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct freelist {scalar_t__ count; scalar_t__ reserved_count; int size; int tag; struct freelist* next; } ;
struct TYPE_3__ {scalar_t__ vbus; struct freelist* freelist_dma_head; struct freelist* freelist_head; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef int PVBUS ;
typedef int HPT_UPTR ;
typedef int BUS_ADDRESS ;


 int HPT_ASSERT (void*) ;
 int KdPrint (char*) ;
 int M_DEVBUF ;
 int PAGE_SIZE ;
 void* dmapool_get_page (int ,int *) ;
 int dmapool_put_page (int ,void*,int ) ;
 int free (void*,int ) ;
 int free_pages (void*,int) ;
 void* freelist_get (struct freelist*) ;
 void* freelist_get_dma (struct freelist*,int *) ;
 int os_max_cache_pages ;

__attribute__((used)) static void hpt_free_mem(PVBUS_EXT vbus_ext)
{
 struct freelist *f;
 void *p;
 int i;
 BUS_ADDRESS bus;

 for (f=vbus_ext->freelist_head; f; f=f->next) {





  while ((p=freelist_get(f)))
   free(p, M_DEVBUF);
 }

 for (i=0; i<os_max_cache_pages; i++) {
  p = dmapool_get_page((PVBUS)vbus_ext->vbus, &bus);
  HPT_ASSERT(p);
  free_pages(p, 0);
 }

 for (f=vbus_ext->freelist_dma_head; f; f=f->next) {
  int order, size;





  for (order=0, size=PAGE_SIZE; size<f->size; order++, size<<=1) ;

  while ((p=freelist_get_dma(f, &bus))) {
   if (order)
    free_pages(p, order);
   else {

    if (((HPT_UPTR)p & (PAGE_SIZE-1))==0)
     dmapool_put_page((PVBUS)vbus_ext->vbus, p, bus);
   }
  }
 }

 while ((p = dmapool_get_page((PVBUS)vbus_ext->vbus, &bus)))
  free_pages(p, 0);
}

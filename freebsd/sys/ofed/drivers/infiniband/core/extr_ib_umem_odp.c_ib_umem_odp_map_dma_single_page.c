
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct ib_umem {TYPE_2__* context; TYPE_1__* odp_data; } ;
struct ib_device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__ invalidate_range; struct ib_device* device; } ;
struct TYPE_3__ {int* dma_list; struct page** page_list; } ;


 int DMA_BIDIRECTIONAL ;
 int EAGAIN ;
 int EFAULT ;
 int PAGE_SIZE ;
 int ib_dma_map_page (struct ib_device*,struct page*,int ,int,int ) ;
 scalar_t__ ib_dma_mapping_error (struct ib_device*,int) ;
 scalar_t__ ib_umem_mmu_notifier_retry (struct ib_umem*,unsigned long) ;
 int invalidate_page_trampoline (struct ib_umem*,int,int,int *) ;
 int pr_err (char*,struct page*,struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static int ib_umem_odp_map_dma_single_page(
  struct ib_umem *umem,
  int page_index,
  u64 base_virt_addr,
  struct page *page,
  u64 access_mask,
  unsigned long current_seq)
{
 struct ib_device *dev = umem->context->device;
 dma_addr_t dma_addr;
 int stored_page = 0;
 int remove_existing_mapping = 0;
 int ret = 0;






 if (ib_umem_mmu_notifier_retry(umem, current_seq)) {
  ret = -EAGAIN;
  goto out;
 }
 if (!(umem->odp_data->dma_list[page_index])) {
  dma_addr = ib_dma_map_page(dev,
        page,
        0, PAGE_SIZE,
        DMA_BIDIRECTIONAL);
  if (ib_dma_mapping_error(dev, dma_addr)) {
   ret = -EFAULT;
   goto out;
  }
  umem->odp_data->dma_list[page_index] = dma_addr | access_mask;
  umem->odp_data->page_list[page_index] = page;
  stored_page = 1;
 } else if (umem->odp_data->page_list[page_index] == page) {
  umem->odp_data->dma_list[page_index] |= access_mask;
 } else {
  pr_err("error: got different pages in IB device and from get_user_pages. IB device page: %p, gup page: %p\n",
         umem->odp_data->page_list[page_index], page);


  remove_existing_mapping = 1;
 }

out:

 if (umem->context->invalidate_range || !stored_page)
  put_page(page);

 if (remove_existing_mapping && umem->context->invalidate_range) {
  invalidate_page_trampoline(
   umem,
   base_virt_addr + (page_index * PAGE_SIZE),
   base_virt_addr + ((page_index+1)*PAGE_SIZE),
   ((void*)0));
  ret = -EAGAIN;
 }

 return ret;
}

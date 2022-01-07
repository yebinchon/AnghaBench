
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
struct vm_map {int dummy; } ;
struct sf_buf {int dummy; } ;


 int PAGE_SIZE ;
 int SFB_NOWAIT ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 struct sf_buf* sf_buf_alloc (int ,int ) ;
 scalar_t__ vm_fault_quick_hold_pages (struct vm_map*,int ,int ,int,int *,int) ;
 int zbuf_page_free (int ) ;

__attribute__((used)) static struct sf_buf *
zbuf_sfbuf_get(struct vm_map *map, vm_offset_t uaddr)
{
 struct sf_buf *sf;
 vm_page_t pp;

 if (vm_fault_quick_hold_pages(map, uaddr, PAGE_SIZE, VM_PROT_READ |
     VM_PROT_WRITE, &pp, 1) < 0)
  return (((void*)0));
 sf = sf_buf_alloc(pp, SFB_NOWAIT);
 if (sf == ((void*)0)) {
  zbuf_page_free(pp);
  return (((void*)0));
 }
 return (sf);
}

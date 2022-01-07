
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef scalar_t__ uint8_t ;
typedef size_t uint64_t ;
struct notify_data {int action; size_t index; int notify_evtchn_handle; } ;


 size_t PAGE_MASK ;
 int UNMAP_NOTIFY_CLEAR_BYTE ;
 int UNMAP_NOTIFY_SEND_EVENT ;
 scalar_t__ pmap_quick_enter_page (int ) ;
 int pmap_quick_remove_page (int ) ;
 int xen_intr_signal (int ) ;
 int xen_intr_unbind (int *) ;

__attribute__((used)) static void
notify(struct notify_data *notify, vm_page_t page)
{
 if (notify->action & UNMAP_NOTIFY_CLEAR_BYTE) {
  uint8_t *mem;
  uint64_t offset;

  offset = notify->index & PAGE_MASK;
  mem = (uint8_t *)pmap_quick_enter_page(page);
  mem[offset] = 0;
  pmap_quick_remove_page((vm_offset_t)mem);
 }
 if (notify->action & UNMAP_NOTIFY_SEND_EVENT) {
  xen_intr_signal(notify->notify_evtchn_handle);
  xen_intr_unbind(&notify->notify_evtchn_handle);
 }
 notify->action = 0;
}

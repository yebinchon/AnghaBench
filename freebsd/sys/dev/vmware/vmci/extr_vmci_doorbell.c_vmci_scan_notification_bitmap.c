
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;


 int ASSERT (int*) ;
 size_t max_notify_idx ;
 int vmci_doorbell_fire_entries (size_t) ;

void
vmci_scan_notification_bitmap(uint8_t *bitmap)
{
 uint32_t idx;

 ASSERT(bitmap);

 for (idx = 0; idx < max_notify_idx; idx++) {
  if (bitmap[idx] & 0x1) {
   bitmap[idx] &= ~1;
   vmci_doorbell_fire_entries(idx);
  }
 }
}

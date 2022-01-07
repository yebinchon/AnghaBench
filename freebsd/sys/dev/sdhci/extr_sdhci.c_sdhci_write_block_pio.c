
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sdhci_slot {scalar_t__ offset; TYPE_2__* curcmd; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {char* data; int flags; int block_size; scalar_t__ len; } ;


 int MMC_DATA_BLOCK_SIZE ;
 int SDHCI_BUFFER ;
 int WR4 (struct sdhci_slot*,int ,int) ;
 int WR_MULTI_4 (struct sdhci_slot*,int ,int*,size_t) ;
 size_t min (int,scalar_t__) ;

__attribute__((used)) static void
sdhci_write_block_pio(struct sdhci_slot *slot)
{
 uint32_t data = 0;
 char *buffer;
 size_t left;

 buffer = slot->curcmd->data->data;
 buffer += slot->offset;







  left = min(512, slot->curcmd->data->len - slot->offset);
 slot->offset += left;


 if ((intptr_t)buffer & 3) {
  while (left > 3) {
   data = buffer[0] +
       (buffer[1] << 8) +
       (buffer[2] << 16) +
       (buffer[3] << 24);
   left -= 4;
   buffer += 4;
   WR4(slot, SDHCI_BUFFER, data);
  }
 } else {
  WR_MULTI_4(slot, SDHCI_BUFFER,
      (uint32_t *)buffer, left >> 2);
  left &= 3;
 }

 if (left > 0) {
  while (left > 0) {
   data <<= 8;
   data += *(buffer++);
   left--;
  }
  WR4(slot, SDHCI_BUFFER, data);
 }
}

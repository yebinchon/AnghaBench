
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct TYPE_3__ {int code_type; int indicator; scalar_t__ device_id; } ;
typedef TYPE_1__ pcir_data_t ;
struct TYPE_4__ {int cksum; int size512; scalar_t__ pcir_offset; } ;
typedef TYPE_2__ legacy_pci_exp_rom_header_t ;


 size_t le16_to_cpu (int) ;

__attribute__((used)) static void modify_device_id(int device_id, u8 *boot_data)
{
 legacy_pci_exp_rom_header_t *header;
 pcir_data_t *pcir_header;
 u32 cur_header = 0;




 while (1) {
  header = (legacy_pci_exp_rom_header_t *) &boot_data[cur_header];
  pcir_header = (pcir_data_t *) &boot_data[cur_header +
         le16_to_cpu(*(u16*)header->pcir_offset)];
  if (pcir_header->code_type == 0x00) {
   u8 csum = 0;
   int i;




   *(u16*) pcir_header->device_id = device_id;





   header->cksum = 0x0;




   for (i = 0; i < (header->size512 * 512); i++)
    csum += (u8)boot_data[cur_header + i];





   boot_data[cur_header + 7] = -csum;

  } else if (pcir_header->code_type == 0x03) {




   *(u16*) pcir_header->device_id = device_id;

  }






  if (pcir_header->indicator & 0x80)
   break;




  cur_header += header->size512 * 512;
 }
}

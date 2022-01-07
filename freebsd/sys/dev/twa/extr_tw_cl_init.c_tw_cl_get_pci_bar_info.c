
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TW_INT32 ;
 int TW_OSL_ENOTTY ;
 int TW_OSL_ESUCCESS ;

TW_INT32
tw_cl_get_pci_bar_info(TW_INT32 device_id, TW_INT32 bar_type,
 TW_INT32 *bar_num, TW_INT32 *bar0_offset, TW_INT32 *bar_size)
{
 TW_INT32 error = TW_OSL_ESUCCESS;

 switch(device_id) {
 case 131:
  switch(bar_type) {
  case 134:
   *bar_num = 0;
   *bar0_offset = 0;
   *bar_size = 4;
   break;

  case 133:
   *bar_num = 1;
   *bar0_offset = 0x4;
   *bar_size = 8;
   break;

  case 132:
   *bar_num = 2;
   *bar0_offset = 0xC;
   *bar_size = 8;
   break;
  }
  break;

 case 128:
 case 130:
 case 129:
  switch(bar_type) {
  case 134:
   *bar_num = 2;
   *bar0_offset = 0x10;
   *bar_size = 4;
   break;

  case 133:
   *bar_num = 1;
   *bar0_offset = 0x8;
   *bar_size = 8;
   break;

  case 132:
   *bar_num = 0;
   *bar0_offset = 0;
   *bar_size = 8;
   break;
  }
  break;

 default:
  error = TW_OSL_ENOTTY;
  break;
 }

 return(error);
}

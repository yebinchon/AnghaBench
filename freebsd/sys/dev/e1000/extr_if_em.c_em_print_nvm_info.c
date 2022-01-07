
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adapter {int hw; } ;


 int e1000_read_nvm (int *,int,int,int*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
em_print_nvm_info(struct adapter *adapter)
{
 u16 eeprom_data;
 int i, j, row = 0;


 printf("\nInterface EEPROM Dump:\n");
 printf("Offset\n0x0000  ");
 for (i = 0, j = 0; i < 32; i++, j++) {
  if (j == 8) {
   j = 0; ++row;
   printf("\n0x00%x0  ",row);
  }
  e1000_read_nvm(&adapter->hw, i, 1, &eeprom_data);
  printf("%04x ", eeprom_data);
 }
 printf("\n");
}

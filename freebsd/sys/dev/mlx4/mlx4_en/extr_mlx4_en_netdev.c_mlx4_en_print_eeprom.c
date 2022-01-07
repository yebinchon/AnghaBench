
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u32 ;


 int printf (char*,...) ;

__attribute__((used)) static void mlx4_en_print_eeprom(u8 *data, __u32 len)
{
 int i;
 int j = 0;
 int row = 0;
 const int NUM_OF_BYTES = 16;

 printf("\nOffset\t\tValues\n");
 printf("------\t\t------\n");
 while(row < len){
  printf("0x%04x\t\t",row);
  for(i=0; i < NUM_OF_BYTES; i++){
   printf("%02x ", data[j]);
   row++;
   j++;
  }
  printf("\n");
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MIN (int,int) ;
 int printf (char*,...) ;
 int putchar (int) ;

__attribute__((used)) static int hci_dump_adv(uint8_t *data, int length)
{
 int elemlen;
 int type;
 int i;

 while(length>0){
  elemlen = *data;
  data++;
  length --;
  elemlen--;
  if(length<=0)
   break;
  type = *data;
  data++;
  length --;
  elemlen--;
  if(length<=0)
   break;
  switch(type){
  case 0x1:
   printf("NDflag:%x\n", *data);
   break;
  case 0x9:
   printf("LocalName:");
   for(i = 0; i < MIN(length,elemlen); i++){
    putchar(data[i]);
   }
   printf("\n");
   break;
  default:
   printf("Type%d:", type);
   for(i=0; i < MIN(length,elemlen); i++){
    printf("%02x ",data[i]);
   }
   printf("\n");
   break;
  }
  data += elemlen;
  length -= elemlen;
 }
 return 0;
}

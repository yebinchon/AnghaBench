
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int DELAY (int) ;
 int PNP_RESOURCE_DATA ;
 int PNP_STATUS ;
 int _PNP_ADDRESS ;
 int inb (int) ;
 int outb (int ,int ) ;
 int pnp_rd_port ;
 int printf (char*) ;

__attribute__((used)) static int
pnp_get_resource_info(u_char *buffer, int len)
{
 int i, j, count;
 u_char temp;

 count = 0;
 for (i = 0; i < len; i++) {
  outb(_PNP_ADDRESS, PNP_STATUS);
  for (j = 0; j < 100; j++) {
   if ((inb((pnp_rd_port << 2) | 0x3)) & 0x1)
    break;
   DELAY(10);
  }
  if (j == 100) {
   printf("PnP device failed to report resource data\n");
   return (count);
  }
  outb(_PNP_ADDRESS, PNP_RESOURCE_DATA);
  temp = inb((pnp_rd_port << 2) | 0x3);
  if (buffer != ((void*)0))
   buffer[i] = temp;
  count++;
 }
 return (count);
}

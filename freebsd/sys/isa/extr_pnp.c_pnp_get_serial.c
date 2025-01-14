
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int pnp_id ;


 int DELAY (int) ;
 int PNP_SERIAL_ISOLATION ;
 int _PNP_ADDRESS ;
 int bzero (int*,int) ;
 int inb (int) ;
 int outb (int ,int ) ;
 int pnp_rd_port ;

__attribute__((used)) static int
pnp_get_serial(pnp_id *p)
{
 int i, bit, valid = 0, sum = 0x6a;
 u_char *data = (u_char *)p;

 bzero(data, sizeof(char) * 9);
 outb(_PNP_ADDRESS, PNP_SERIAL_ISOLATION);
 for (i = 0; i < 72; i++) {
  bit = inb((pnp_rd_port << 2) | 0x3) == 0x55;
  DELAY(250);


  bit = (inb((pnp_rd_port << 2) | 0x3) == 0xaa) && bit;
  DELAY(250);

  valid = valid || bit;
  if (i < 64)
   sum = (sum >> 1) |
     (((sum ^ (sum >> 1) ^ bit) << 7) & 0xff);
  data[i / 8] = (data[i / 8] >> 1) | (bit ? 0x80 : 0);
 }

 valid = valid && (data[8] == sum);

 return (valid);
}

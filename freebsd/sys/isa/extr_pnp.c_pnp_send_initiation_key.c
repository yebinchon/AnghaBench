
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PNP_ADDRESS ;
 int outb (int ,int) ;

__attribute__((used)) static void
pnp_send_initiation_key()
{
 int cur, i;


 outb(_PNP_ADDRESS, 0);
 outb(_PNP_ADDRESS, 0);

 cur = 0x6a;
 outb(_PNP_ADDRESS, cur);

 for (i = 1; i < 32; i++) {
  cur = (cur >> 1) | (((cur ^ (cur >> 1)) << 7) & 0xff);
  outb(_PNP_ADDRESS, cur);
 }
}

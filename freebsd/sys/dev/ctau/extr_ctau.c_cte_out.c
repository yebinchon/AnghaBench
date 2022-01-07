
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int E1DAT (int) ;
 int outb (int,unsigned char) ;

void cte_out (port_t base, unsigned char reg, unsigned char val)
{
 outb (base, reg);
 outb (E1DAT (base & 0x3e0), val);
}

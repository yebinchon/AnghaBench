
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int E1DAT (int) ;
 unsigned char inb (int ) ;
 int outb (int,unsigned char) ;

unsigned char cte_in (port_t base, unsigned char reg)
{
 outb (base, reg);
 return inb (E1DAT (base & 0x3e0));
}

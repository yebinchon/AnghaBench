
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int E1DAT (int) ;
 unsigned char inb (int) ;
 int outb (int,unsigned char) ;

unsigned char cte_ins (port_t base, unsigned char reg,
 unsigned char mask)
{
 unsigned char val;
 port_t rw = E1DAT (base & 0x3e0);

 outb (base, reg); outb (rw, mask);
 outb (base, reg); val = inb (rw) & mask;
 outb (base, reg); outb (rw, val);
 return val;
}

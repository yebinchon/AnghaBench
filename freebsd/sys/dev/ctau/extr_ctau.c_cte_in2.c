
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int E1CS2 (int ) ;
 unsigned char E1CS2_SCC ;
 int E1DAT (int ) ;
 unsigned char inb (int ) ;
 int outb (int ,unsigned char) ;

unsigned char cte_in2 (port_t base, unsigned char reg)
{
 outb (E1CS2(base), E1CS2_SCC | reg >> 4);
 outb (E1DAT(base), reg & 15);
 return inb (E1DAT(base));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CR0_AM ;
 unsigned int CR0_MP ;
 unsigned int CR0_NE ;
 unsigned int CR0_TS ;
 unsigned int CR0_WP ;
 int _udatasel ;
 int load_cr0 (unsigned int) ;
 int load_gs (int ) ;
 unsigned int rcr0 () ;

void
cpu_setregs(void)
{
 unsigned int cr0;

 cr0 = rcr0();
 cr0 |= CR0_MP | CR0_NE | CR0_TS | CR0_WP | CR0_AM;
 load_cr0(cr0);
 load_gs(_udatasel);
}

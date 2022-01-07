
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmc_intr () ;
 int lapic_eoi () ;

void
lapic_handle_cmc(void)
{

 lapic_eoi();
 cmc_intr();
}

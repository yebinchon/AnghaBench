
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 unsigned long long nlm_read_c0_eimr () ;
 int nlm_write_c0_eimr (unsigned long long) ;

void
xlp_enable_irq(int irq)
{
 uint64_t eimr;

 eimr = nlm_read_c0_eimr();
 nlm_write_c0_eimr(eimr | (1ULL << irq));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;


 int APIC_TPR_PRIO ;
 int LAPIC_TPR ;
 int lapic_read32 (int ) ;
 int lapic_write32 (int ,int) ;

__attribute__((used)) static void
lapic_set_tpr(u_int vector)
{



 uint32_t tpr;

 tpr = lapic_read32(LAPIC_TPR) & ~APIC_TPR_PRIO;
 tpr |= vector;
 lapic_write32(LAPIC_TPR, tpr);

}

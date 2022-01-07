
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct TYPE_2__ {int lvt_masked; } ;


 size_t APIC_LVT_PMC ;
 size_t APIC_VER_MAXLVT ;
 int KASSERT (int,char*) ;
 int LAPIC_VERSION ;
 size_t MAXLVTSHIFT ;
 int * lapic_map ;
 size_t lapic_read32 (int ) ;
 int lapic_update_pmc ;
 TYPE_1__* lvts ;
 int mp_ncpus ;
 int smp_rendezvous (int *,int ,int *,int *) ;
 scalar_t__ smp_started ;
 int x2apic_mode ;

__attribute__((used)) static void
native_lapic_disable_pmc(void)
{
}

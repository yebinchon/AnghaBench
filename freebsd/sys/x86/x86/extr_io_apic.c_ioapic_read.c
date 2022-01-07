
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int ioregsel; int iowin; } ;
typedef TYPE_1__ ioapic_t ;


 int MA_OWNED ;
 int icu_lock ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static u_int
ioapic_read(volatile ioapic_t *apic, int reg)
{

 mtx_assert(&icu_lock, MA_OWNED);
 apic->ioregsel = reg;
 return (apic->iowin);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAPIC_EOI ;
 int lapic_write32_nofence (int ,int ) ;

__attribute__((used)) static void
native_lapic_eoi(void)
{

 lapic_write32_nofence(LAPIC_EOI, 0);
}

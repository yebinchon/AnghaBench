
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APIC_ID_SHIFT ;
 int KASSERT (int,char*) ;
 int LAPIC_ID ;
 int * lapic_map ;
 int lapic_read32 (int ) ;
 scalar_t__ x2apic_mode ;

__attribute__((used)) static int
native_lapic_id(void)
{
 uint32_t v;

 KASSERT(x2apic_mode || lapic_map != ((void*)0), ("local APIC is not mapped"));
 v = lapic_read32(LAPIC_ID);
 if (!x2apic_mode)
  v >>= APIC_ID_SHIFT;
 return (v);
}

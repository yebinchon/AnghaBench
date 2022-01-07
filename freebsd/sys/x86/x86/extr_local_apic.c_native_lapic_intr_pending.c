
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;


 scalar_t__ LAPIC_IRR0 ;
 int lapic_read32 (scalar_t__) ;

__attribute__((used)) static int
native_lapic_intr_pending(u_int vector)
{
 uint32_t irr;
 irr = lapic_read32(LAPIC_IRR0 + vector / 32);
 return (irr & 1 << (vector % 32));
}

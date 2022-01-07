
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int hw_cap; } ;



__attribute__((used)) static void
cpu_e5_am9(struct dmar_unit *unit)
{

 unit->hw_cap &= ~(0x3fULL << 48);
 unit->hw_cap |= (9ULL << 48);
}

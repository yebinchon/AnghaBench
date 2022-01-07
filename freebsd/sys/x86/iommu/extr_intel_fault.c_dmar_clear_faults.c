
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmar_unit {int hw_cap; } ;


 int DMAR_CAP_FRO (int ) ;
 int DMAR_CAP_NFR (int ) ;
 int DMAR_FRCD2_F32 ;
 int DMAR_FSTS_REG ;
 int dmar_read4 (struct dmar_unit*,int) ;
 int dmar_write4 (struct dmar_unit*,int,int) ;

__attribute__((used)) static void
dmar_clear_faults(struct dmar_unit *unit)
{
 uint32_t frec, frir, fsts;
 int i;

 for (i = 0; i < DMAR_CAP_NFR(unit->hw_cap); i++) {
  frir = (DMAR_CAP_FRO(unit->hw_cap) + i) * 16;
  frec = dmar_read4(unit, frir + 12);
  if ((frec & DMAR_FRCD2_F32) == 0)
   continue;
  dmar_write4(unit, frir + 12, DMAR_FRCD2_F32);
 }
 fsts = dmar_read4(unit, DMAR_FSTS_REG);
 dmar_write4(unit, DMAR_FSTS_REG, fsts);
}

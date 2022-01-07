
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmar_unit {int unit; } ;


 int DMAR_FSTS_AFO ;
 int DMAR_FSTS_APF ;
 int DMAR_FSTS_ICE ;
 int DMAR_FSTS_IQE ;
 int DMAR_FSTS_ITE ;
 int DMAR_FSTS_REG ;
 int dmar_write4 (struct dmar_unit*,int ,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void
dmar_fault_intr_clear(struct dmar_unit *unit, uint32_t fsts)
{
 uint32_t clear;

 clear = 0;
 if ((fsts & DMAR_FSTS_ITE) != 0) {
  printf("DMAR%d: Invalidation timed out\n", unit->unit);
  clear |= DMAR_FSTS_ITE;
 }
 if ((fsts & DMAR_FSTS_ICE) != 0) {
  printf("DMAR%d: Invalidation completion error\n",
      unit->unit);
  clear |= DMAR_FSTS_ICE;
 }
 if ((fsts & DMAR_FSTS_IQE) != 0) {
  printf("DMAR%d: Invalidation queue error\n",
      unit->unit);
  clear |= DMAR_FSTS_IQE;
 }
 if ((fsts & DMAR_FSTS_APF) != 0) {
  printf("DMAR%d: Advanced pending fault\n", unit->unit);
  clear |= DMAR_FSTS_APF;
 }
 if ((fsts & DMAR_FSTS_AFO) != 0) {
  printf("DMAR%d: Advanced fault overflow\n", unit->unit);
  clear |= DMAR_FSTS_AFO;
 }
 if (clear != 0)
  dmar_write4(unit, DMAR_FSTS_REG, clear);
}

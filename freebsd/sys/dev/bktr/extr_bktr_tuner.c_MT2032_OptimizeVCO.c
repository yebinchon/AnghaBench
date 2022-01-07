
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bktr_ptr_t ;


 int MT2032_CheckLOLock (int ) ;
 int MT2032_GetRegister (int) ;
 int MT2032_SetRegister (int,int) ;

__attribute__((used)) static int
MT2032_OptimizeVCO(bktr_ptr_t bktr, int sel, int lock)
{
 int tad1, lo1a;

 tad1 = MT2032_GetRegister(0x0f) & 0x07;

 if (tad1 == 0) {
  return lock;
 }
 if (tad1 == 1) {
  return lock;
 }
 if (tad1 == 2) {
  if (sel == 0) {
   return lock;
  } else {
   sel--;
  }
 } else {
  if (sel < 4) {
   sel++;
  } else {
   return lock;
  }
 }
 lo1a = MT2032_GetRegister(0x01) & 0x07;
 MT2032_SetRegister(0x01, lo1a | (sel << 4));
 lock = MT2032_CheckLOLock(bktr);
 return lock;
}

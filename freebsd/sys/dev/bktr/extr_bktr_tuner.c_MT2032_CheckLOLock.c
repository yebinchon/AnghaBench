
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bktr_ptr_t ;


 int DELAY (int) ;
 int MT2032_GetRegister (int) ;

__attribute__((used)) static int
MT2032_CheckLOLock(bktr_ptr_t bktr)
{
 int t, lock = 0;
 for (t = 0; t < 10; t++) {
  lock = MT2032_GetRegister(0x0e) & 0x06;
  if (lock == 6) {
   break;
  }
  DELAY(1000);
 }
 return lock;
}

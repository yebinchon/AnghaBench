
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int GET_FPU_CW (scalar_t__) ;
 int GET_FPU_SW (scalar_t__) ;
 scalar_t__ PCPU_GET (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 scalar_t__ curthread ;
 int fnstcw (int*) ;
 int fnstsw (int*) ;
 int fpcurthread ;
 int* fpetable ;
 int hw_float ;
 int panic (char*) ;
 int printf (char*,scalar_t__,scalar_t__,int) ;

int
npxtrap_x87(void)
{
 u_short control, status;

 if (!hw_float) {
  printf(
 "npxtrap_x87: fpcurthread = %p, curthread = %p, hw_float = %d\n",
         PCPU_GET(fpcurthread), curthread, hw_float);
  panic("npxtrap from nowhere");
 }
 critical_enter();






 if (PCPU_GET(fpcurthread) != curthread) {
  control = GET_FPU_CW(curthread);
  status = GET_FPU_SW(curthread);
 } else {
  fnstcw(&control);
  fnstsw(&status);
 }
 critical_exit();
 return (fpetable[status & ((~control & 0x3f) | 0x40)]);
}

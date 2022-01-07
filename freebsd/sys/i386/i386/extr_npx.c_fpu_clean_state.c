
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int fnclex () ;
 int fnstsw (int*) ;

__attribute__((used)) static void
fpu_clean_state(void)
{
 static float dummy_variable = 0.0;
 u_short status;





 fnstsw(&status);
 if (status & 0x80)
  fnclex();






 __asm __volatile("ffree %%st(7); flds %0" : : "m" (dummy_variable));
}

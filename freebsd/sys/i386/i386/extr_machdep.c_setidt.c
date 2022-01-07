
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inthand_t ;


 uintptr_t setidt_disp ;
 int setidt_nodisp (int,uintptr_t,int,int,int) ;

void
setidt(int idx, inthand_t *func, int typ, int dpl, int selec)
{
 uintptr_t off;

 off = func != ((void*)0) ? (uintptr_t)func + setidt_disp : 0;
 setidt_nodisp(idx, off, typ, dpl, selec);
}

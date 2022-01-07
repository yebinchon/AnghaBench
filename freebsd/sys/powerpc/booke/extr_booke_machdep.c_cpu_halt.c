
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSL_CE ;
 int PSL_DE ;
 int PSL_EE ;
 int PSL_ME ;
 int mfmsr () ;
 int mtmsr (int) ;

void
cpu_halt(void)
{

 mtmsr(mfmsr() & ~(PSL_CE | PSL_EE | PSL_ME | PSL_DE));
 while (1)
  ;
}

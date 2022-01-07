
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSL_EE ;
 int cninit_finish () ;
 scalar_t__ cold ;
 int mfmsr () ;
 int mtmsr (int) ;
 int powerpc_enable_intr () ;

__attribute__((used)) static void
configure_final(void *dummy)
{





 powerpc_enable_intr();


 mtmsr(mfmsr() | PSL_EE);

 cninit_finish();
 cold = 0;
}

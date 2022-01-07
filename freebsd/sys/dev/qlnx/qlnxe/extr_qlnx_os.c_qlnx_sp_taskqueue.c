
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;


 int qlnx_sp_isr (struct ecore_hwfn*) ;

__attribute__((used)) static void
qlnx_sp_taskqueue(void *context, int pending)
{
 struct ecore_hwfn *p_hwfn;

 p_hwfn = context;

 if (p_hwfn != ((void*)0)) {
  qlnx_sp_isr(p_hwfn);
 }
 return;
}

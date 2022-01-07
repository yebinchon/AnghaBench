
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_hwfn {scalar_t__ p_dev; } ;
struct TYPE_3__ {int sp_interrupts; } ;
typedef TYPE_1__ qlnx_host_t ;


 int QL_DPRINT2 (TYPE_1__*,char*) ;
 int ecore_int_sp_dpc (struct ecore_hwfn*) ;

void
qlnx_sp_isr(void *arg)
{
 struct ecore_hwfn *p_hwfn;
 qlnx_host_t *ha;

 p_hwfn = arg;

 ha = (qlnx_host_t *)p_hwfn->p_dev;

 ha->sp_interrupts++;

 QL_DPRINT2(ha, "enter\n");

 ecore_int_sp_dpc(p_hwfn);

 QL_DPRINT2(ha, "exit\n");

 return;
}

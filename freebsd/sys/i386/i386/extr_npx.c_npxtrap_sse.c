
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_13__ {TYPE_4__* td_pcb; } ;
struct TYPE_12__ {TYPE_3__* pcb_save; } ;
struct TYPE_9__ {int en_mxcsr; } ;
struct TYPE_10__ {TYPE_1__ sv_env; } ;
struct TYPE_11__ {TYPE_2__ sv_xmm; } ;


 TYPE_5__* PCPU_GET (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_5__* curthread ;
 int fpcurthread ;
 int* fpetable ;
 int hw_float ;
 int panic (char*) ;
 int printf (char*,TYPE_5__*,TYPE_5__*,int) ;
 int stmxcsr (int*) ;

int
npxtrap_sse(void)
{
 u_int mxcsr;

 if (!hw_float) {
  printf(
 "npxtrap_sse: fpcurthread = %p, curthread = %p, hw_float = %d\n",
         PCPU_GET(fpcurthread), curthread, hw_float);
  panic("npxtrap from nowhere");
 }
 critical_enter();
 if (PCPU_GET(fpcurthread) != curthread)
  mxcsr = curthread->td_pcb->pcb_save->sv_xmm.sv_env.en_mxcsr;
 else
  stmxcsr(&mxcsr);
 critical_exit();
 return (fpetable[(mxcsr & (~mxcsr >> 7)) & 0x3f]);
}

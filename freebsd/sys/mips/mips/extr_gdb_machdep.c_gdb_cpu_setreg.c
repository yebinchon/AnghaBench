
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* register_t ;
struct TYPE_4__ {void* pc; } ;
struct TYPE_3__ {void** pcb_context; } ;



 int curthread ;
 TYPE_2__* kdb_frame ;
 TYPE_1__* kdb_thrctx ;
 int kdb_thread ;

void
gdb_cpu_setreg(int regnum, void *val)
{
 switch (regnum) {
 case 128:
  kdb_thrctx->pcb_context[10] = *(register_t *)val;
  if (kdb_thread == curthread)
   kdb_frame->pc = *(register_t *)val;
 }
}

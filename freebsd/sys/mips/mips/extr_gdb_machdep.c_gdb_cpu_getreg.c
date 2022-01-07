
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void register_t ;
struct TYPE_4__ {int zero; } ;
struct TYPE_3__ {void* pcb_context; } ;


 size_t PCB_REG_GP ;
 size_t PCB_REG_PC ;
 size_t PCB_REG_RA ;
 int PCB_REG_S0 ;
 size_t PCB_REG_S8 ;
 size_t PCB_REG_SP ;
 scalar_t__ curthread ;
 size_t gdb_cpu_regsz (int) ;
 TYPE_2__* kdb_frame ;
 TYPE_1__* kdb_thrctx ;
 scalar_t__ kdb_thread ;

void *
gdb_cpu_getreg(int regnum, size_t *regsz)
{

  *regsz = gdb_cpu_regsz(regnum);
  if (kdb_thread == curthread) {
  register_t *zero_ptr = &kdb_frame->zero;
  return zero_ptr + regnum;
 }

 switch (regnum) {



 case 16:
 case 17:
 case 18:
 case 19:
 case 20:
 case 21:
 case 22:
 case 23:
   return (&kdb_thrctx->pcb_context[PCB_REG_S0 + regnum - 16]);
 case 28:
  return (&kdb_thrctx->pcb_context[PCB_REG_GP]);
 case 29:
  return (&kdb_thrctx->pcb_context[PCB_REG_SP]);
 case 30:
  return (&kdb_thrctx->pcb_context[PCB_REG_S8]);
 case 31:
  return (&kdb_thrctx->pcb_context[PCB_REG_RA]);
 case 37:
  return (&kdb_thrctx->pcb_context[PCB_REG_PC]);
 }
 return (((void*)0));
}

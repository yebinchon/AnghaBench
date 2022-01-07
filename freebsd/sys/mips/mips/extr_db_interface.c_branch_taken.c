
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int register_t ;
typedef scalar_t__ db_addr_t ;
struct TYPE_6__ {TYPE_2__* td_pcb; } ;
struct TYPE_4__ {int fsr; } ;
struct TYPE_5__ {TYPE_1__ pcb_regs; } ;


 scalar_t__ MipsEmulateBranch (int ,scalar_t__,int ,int ) ;
 TYPE_3__* curthread ;
 int kdb_frame ;

db_addr_t
branch_taken(int inst, db_addr_t pc)
{
 db_addr_t ra;
 register_t fpucsr;


 fpucsr = (curthread) ? curthread->td_pcb->pcb_regs.fsr : 0;
 ra = (db_addr_t)MipsEmulateBranch(kdb_frame, pc, fpucsr, 0);
 return (ra);
}

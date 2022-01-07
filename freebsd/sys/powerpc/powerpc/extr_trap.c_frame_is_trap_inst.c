
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int esr; } ;
struct TYPE_4__ {TYPE_1__ booke; } ;
struct trapframe {scalar_t__ exc; int srr1; TYPE_2__ cpu; } ;


 int ESR_PTR ;
 scalar_t__ EXC_PGM ;
 int EXC_PGM_TRAP ;

__attribute__((used)) static inline bool
frame_is_trap_inst(struct trapframe *frame)
{



 return ((frame->cpu.booke.esr & ESR_PTR) != 0);

}

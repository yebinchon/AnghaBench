
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbcr0; } ;
struct TYPE_4__ {TYPE_1__ booke; } ;
struct trapframe {TYPE_2__ cpu; int srr1; } ;
struct thread {struct trapframe* td_frame; } ;


 int DBCR0_IC ;
 int DBCR0_IDM ;
 int PSL_DE ;

int
ptrace_single_step(struct thread *td)
{
 struct trapframe *tf;

 tf = td->td_frame;
 tf->srr1 |= PSL_DE;
 tf->cpu.booke.dbcr0 |= (DBCR0_IDM | DBCR0_IC);
 return (0);
}

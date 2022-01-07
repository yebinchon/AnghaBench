
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int srr1; int exc; } ;


 int KDB_WHY_TRAP ;
 int KDB_WHY_UNSET ;
 int PSL_PR ;
 scalar_t__ debugger_on_trap ;
 int kdb_trap (int ,int ,struct trapframe*) ;
 int kdb_why ;
 int panic (char*,int ) ;
 int printtrap (int ,struct trapframe*,int,int) ;
 int trapname (int ) ;

__attribute__((used)) static void
trap_fatal(struct trapframe *frame)
{




 printtrap(frame->exc, frame, 1, (frame->srr1 & PSL_PR));
 panic("%s trap", trapname(frame->exc));
}

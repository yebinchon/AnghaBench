
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_frame {struct i386_frame* f_frame; int f_retaddr; } ;
typedef scalar_t__ register_t ;
typedef scalar_t__ db_addr_t ;


 int curthread ;
 int db_backtrace (int ,int *,struct i386_frame*,scalar_t__,int ,int) ;
 scalar_t__ db_get_value (int,int,int) ;

void
db_trace_self(void)
{
 struct i386_frame *frame;
 db_addr_t callpc;
 register_t ebp;

 __asm __volatile("movl %%ebp,%0" : "=r" (ebp));
 frame = (struct i386_frame *)ebp;
 callpc = (db_addr_t)db_get_value((int)&frame->f_retaddr, 4, 0);
 frame = frame->f_frame;
 db_backtrace(curthread, ((void*)0), frame, callpc, 0, -1);
}

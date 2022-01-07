
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int trace_cont (int ) ;
 int trace_sc (int ) ;
 scalar_t__ trace_syscalls ;

__attribute__((used)) static int
trace(pid_t pid)
{

 return (trace_syscalls ? trace_sc(pid) : trace_cont(pid));
}

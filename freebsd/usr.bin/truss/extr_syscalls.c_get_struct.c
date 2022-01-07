
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_io_desc {int piod_len; void* piod_addr; void* piod_offs; int piod_op; } ;
typedef int pid_t ;
typedef int caddr_t ;


 int PIOD_READ_D ;
 int PT_IO ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;

__attribute__((used)) static int
get_struct(pid_t pid, uintptr_t offset, void *buf, int len)
{
 struct ptrace_io_desc iorequest;

 iorequest.piod_op = PIOD_READ_D;
 iorequest.piod_offs = (void *)offset;
 iorequest.piod_addr = buf;
 iorequest.piod_len = len;
 if (ptrace(PT_IO, pid, (caddr_t)&iorequest, 0) < 0)
  return (-1);
 return (0);
}

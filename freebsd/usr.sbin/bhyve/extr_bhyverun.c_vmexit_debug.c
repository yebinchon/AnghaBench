
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct vm_exit {int dummy; } ;


 int VMEXIT_CONTINUE ;
 int gdb_cpu_suspend (int) ;

__attribute__((used)) static int
vmexit_debug(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{

 gdb_cpu_suspend(*pvcpu);
 return (VMEXIT_CONTINUE);
}

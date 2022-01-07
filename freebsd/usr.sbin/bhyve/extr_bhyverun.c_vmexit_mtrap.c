
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct vm_exit {scalar_t__ inst_length; } ;
struct TYPE_2__ {int vmexit_mtrap; } ;


 int VMEXIT_CONTINUE ;
 int assert (int) ;
 int gdb_cpu_mtrap (int) ;
 TYPE_1__ stats ;

__attribute__((used)) static int
vmexit_mtrap(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{

 assert(vmexit->inst_length == 0);

 stats.vmexit_mtrap++;

 gdb_cpu_mtrap(*pvcpu);

 return (VMEXIT_CONTINUE);
}

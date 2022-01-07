
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct vm_exit {int dummy; } ;
struct TYPE_2__ {int vmexit_pause; } ;


 int VMEXIT_CONTINUE ;
 TYPE_1__ stats ;

__attribute__((used)) static int
vmexit_pause(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{

 stats.vmexit_pause++;

 return (VMEXIT_CONTINUE);
}

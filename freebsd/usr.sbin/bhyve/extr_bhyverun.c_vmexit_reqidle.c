
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct vm_exit {scalar_t__ inst_length; } ;
struct TYPE_2__ {int vmexit_reqidle; } ;


 int VMEXIT_CONTINUE ;
 int assert (int) ;
 TYPE_1__ stats ;

__attribute__((used)) static int
vmexit_reqidle(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{

 assert(vmexit->inst_length == 0);

 stats.vmexit_reqidle++;

 return (VMEXIT_CONTINUE);
}

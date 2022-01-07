
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct vm_exit {int dummy; } ;


 int VMEXIT_CONTINUE ;

__attribute__((used)) static int
vmexit_handle_notify(struct vmctx *ctx, struct vm_exit *vme, int *pvcpu,
       uint32_t eax)
{





 return (VMEXIT_CONTINUE);
}

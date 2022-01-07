
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;


 int BSP ;
 int VM_CAP_UNRESTRICTED_GUEST ;
 int VM_MAXCPU ;
 int vm_get_capability (struct vmctx*,int ,int ,int*) ;

__attribute__((used)) static int
num_vcpus_allowed(struct vmctx *ctx)
{
 int tmp, error;

 error = vm_get_capability(ctx, BSP, VM_CAP_UNRESTRICTED_GUEST, &tmp);





 if (error == 0)
  return (VM_MAXCPU);
 else
  return (1);
}

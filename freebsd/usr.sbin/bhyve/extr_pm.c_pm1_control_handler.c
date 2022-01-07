
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;


 scalar_t__ EALREADY ;
 int PM1_ALWAYS_ZERO ;
 int PM1_SCI_EN ;
 int PM1_SLP_EN ;
 int PM1_SLP_TYP ;
 int VM_SUSPEND_POWEROFF ;
 int assert (int) ;
 scalar_t__ errno ;
 int pm1_control ;
 int vm_suspend (struct vmctx*,int ) ;

__attribute__((used)) static int
pm1_control_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{
 int error;

 if (bytes != 2)
  return (-1);
 if (in)
  *eax = pm1_control;
 else {





  pm1_control = (pm1_control & PM1_SCI_EN) |
      (*eax & ~(PM1_SLP_EN | PM1_ALWAYS_ZERO));





  if (*eax & PM1_SLP_EN) {
   if ((pm1_control & PM1_SLP_TYP) >> 10 == 5) {
    error = vm_suspend(ctx, VM_SUSPEND_POWEROFF);
    assert(error == 0 || errno == EALREADY);
   }
  }
 }
 return (0);
}

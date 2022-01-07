
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vmctx {int dummy; } ;


 scalar_t__ EALREADY ;
 int VM_SUSPEND_RESET ;
 int assert (int) ;
 scalar_t__ errno ;
 int vm_suspend (struct vmctx*,int ) ;

__attribute__((used)) static int
reset_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{
 int error;

 static uint8_t reset_control;

 if (bytes != 1)
  return (-1);
 if (in)
  *eax = reset_control;
 else {
  reset_control = *eax;


  if (reset_control & 0x4) {
   error = vm_suspend(ctx, VM_SUSPEND_RESET);
   assert(error == 0 || errno == EALREADY);
  }
 }
 return (0);
}

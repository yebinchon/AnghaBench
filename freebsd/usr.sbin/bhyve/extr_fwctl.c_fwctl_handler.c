
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;


 int fwctl_inb () ;
 int fwctl_inl () ;
 int fwctl_outl (int) ;
 int fwctl_outw (int) ;

__attribute__((used)) static int
fwctl_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{

 if (in) {
  if (bytes == 1)
   *eax = fwctl_inb();
  else if (bytes == 4)
   *eax = fwctl_inl();
  else
   *eax = 0xffff;
 } else {
  if (bytes == 2)
   fwctl_outw(*eax);
  else if (bytes == 4)
   fwctl_outl(*eax);
 }

 return (0);
}

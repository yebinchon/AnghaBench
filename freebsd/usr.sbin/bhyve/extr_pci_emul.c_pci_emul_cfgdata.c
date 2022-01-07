
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;


 int CONF1_DATA_PORT ;
 int assert (int) ;
 int cfgbus ;
 scalar_t__ cfgenable ;
 int cfgfunc ;
 int cfgoff ;
 int cfgslot ;
 int pci_cfgrw (struct vmctx*,int,int,int ,int ,int ,int,int,int*) ;

__attribute__((used)) static int
pci_emul_cfgdata(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
   uint32_t *eax, void *arg)
{
 int coff;

 assert(bytes == 1 || bytes == 2 || bytes == 4);

 coff = cfgoff + (port - CONF1_DATA_PORT);
 if (cfgenable) {
  pci_cfgrw(ctx, vcpu, in, cfgbus, cfgslot, cfgfunc, coff, bytes,
      eax);
 } else {

  if (in)
   *eax = 0xffffffff;
 }
 return (0);
}

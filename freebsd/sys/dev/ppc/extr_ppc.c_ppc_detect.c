
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int ppc_avm; int ppc_flags; int ppc_mode; } ;


 int EIO ;
 int PPB_COMPATIBLE ;
 int PPB_ECP ;
 scalar_t__ bootverbose ;
 int ppc_detect_fifo (struct ppc_data*) ;
 int ppc_detect_port (struct ppc_data*) ;
 int ppc_generic_detect (struct ppc_data*,int) ;
 int ppc_pc873xx_detect ;
 int ppc_smc37c66xgt_detect ;
 int ppc_smc37c935_detect ;
 int ppc_w83877f_detect ;
 int printf (char*) ;
 int stub1 (struct ppc_data*,int) ;

__attribute__((used)) static int
ppc_detect(struct ppc_data *ppc, int chipset_mode) {
 if (!ppc_detect_port(ppc) && chipset_mode == 0)
  return (EIO);


 ppc->ppc_avm = PPB_COMPATIBLE;
  ppc->ppc_mode = ppc_generic_detect(ppc, chipset_mode);
 if ((ppc->ppc_avm & PPB_ECP) && !(ppc->ppc_flags & 0x80))
  ppc_detect_fifo(ppc);

 return (0);
}

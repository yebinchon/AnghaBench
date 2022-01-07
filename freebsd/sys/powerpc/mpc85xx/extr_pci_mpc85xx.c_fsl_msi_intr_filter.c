
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsl_msi_irq {int * vectors; scalar_t__ reg; } ;


 int FILTER_HANDLED ;
 int ccsr_read4 (scalar_t__) ;
 scalar_t__ ccsrbar_va ;
 int powerpc_dispatch_intr (int ,int *) ;

__attribute__((used)) static int
fsl_msi_intr_filter(void *priv)
{
 struct fsl_msi_irq *data = priv;
 uint32_t reg;
 int i;

 reg = ccsr_read4(ccsrbar_va + data->reg);
 i = 0;
 while (reg != 0) {
  if (reg & 1)
   powerpc_dispatch_intr(data->vectors[i], ((void*)0));
  reg >>= 1;
  i++;
 }

 return (FILTER_HANDLED);
}

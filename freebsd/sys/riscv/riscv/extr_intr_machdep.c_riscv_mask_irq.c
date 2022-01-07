
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIE_SSIE ;
 int SIE_STIE ;
 int SIE_USIE ;
 int csr_clear (int ,int ) ;
 int panic (char*,uintptr_t) ;
 int sie ;

__attribute__((used)) static void
riscv_mask_irq(void *source)
{
 uintptr_t irq;

 irq = (uintptr_t)source;

 switch (irq) {
 case 128:
  csr_clear(sie, SIE_STIE);
  break;
 case 129:
  csr_clear(sie, SIE_USIE);
  break;
 case 130:
  csr_clear(sie, SIE_SSIE);
  break;
 default:
  panic("Unknown irq %d\n", irq);
 }
}

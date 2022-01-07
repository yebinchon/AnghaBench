
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct mips_pic_intr {scalar_t__ intr_irq; scalar_t__ mips_irq; } ;


 int mips_pic_intrs ;
 int mips_pic_map_fixed_intr (scalar_t__,struct mips_pic_intr**) ;
 scalar_t__ nitems (int ) ;
 int panic (char*,scalar_t__,scalar_t__) ;

int
mips_pic_map_fixed_intrs(void)
{
 int error;

 for (u_int i = 0; i < nitems(mips_pic_intrs); i++) {
  struct mips_pic_intr *intr;

  if ((error = mips_pic_map_fixed_intr(i, &intr)))
   return (error);


  if (intr->intr_irq != intr->mips_irq) {
   panic("invalid IRQ mapping: %u->%u", intr->intr_irq,
       intr->mips_irq);
  }
 }

 return (0);
}

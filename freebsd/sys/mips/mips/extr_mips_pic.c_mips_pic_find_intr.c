
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mips_pic_intr {scalar_t__ intr_irq; } ;
typedef scalar_t__ rman_res_t ;


 struct mips_pic_intr* mips_pic_intrs ;
 int mips_pic_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 size_t nitems (struct mips_pic_intr*) ;
 scalar_t__ rman_get_end (struct resource*) ;
 int rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;

__attribute__((used)) static struct mips_pic_intr *
mips_pic_find_intr(struct resource *r)
{
 struct mips_pic_intr *intr;
 rman_res_t irq;

 irq = rman_get_start(r);
 if (irq != rman_get_end(r) || rman_get_size(r) != 1)
  return (((void*)0));

 mtx_lock(&mips_pic_mtx);
 for (size_t i = 0; i < nitems(mips_pic_intrs); i++) {
  intr = &mips_pic_intrs[i];

  if (intr->intr_irq != irq)
   continue;

  mtx_unlock(&mips_pic_mtx);
  return (intr);
 }
 mtx_unlock(&mips_pic_mtx);


 return (((void*)0));
}

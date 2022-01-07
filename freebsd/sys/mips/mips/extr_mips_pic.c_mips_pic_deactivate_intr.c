
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mips_pic_intr {int consumers; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int intr_deactivate_irq (int ,struct resource*) ;
 struct mips_pic_intr* mips_pic_find_intr (struct resource*) ;
 int mips_pic_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
mips_pic_deactivate_intr(device_t child, struct resource *r)
{
 struct mips_pic_intr *intr;
 int error;


 if ((intr = mips_pic_find_intr(r)) == ((void*)0)) {

  return (intr_deactivate_irq(child, r));
 }


 mtx_lock(&mips_pic_mtx);
 KASSERT(intr->consumers > 0, ("refcount overrelease"));

 if (intr->consumers == 1) {
  if ((error = intr_deactivate_irq(child, r))) {
   mtx_unlock(&mips_pic_mtx);
   return (error);
  }
 }
 intr->consumers--;

 mtx_unlock(&mips_pic_mtx);
 return (0);
}

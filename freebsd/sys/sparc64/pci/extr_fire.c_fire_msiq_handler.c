
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_vector {struct fire_msiqarg* iv_icarg; } ;
struct fire_msiqarg {int fmqa_mtx; } ;


 int fire_msiq_common (struct intr_vector*,struct fire_msiqarg*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
fire_msiq_handler(void *cookie)
{
 struct intr_vector *iv;
 struct fire_msiqarg *fmqa;

 iv = cookie;
 fmqa = iv->iv_icarg;
 mtx_lock_spin(&fmqa->fmqa_mtx);
 fire_msiq_common(iv, fmqa);
 mtx_unlock_spin(&fmqa->fmqa_mtx);
}

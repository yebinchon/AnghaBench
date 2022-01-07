
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intr_vector {struct fire_msiqarg* iv_icarg; } ;
struct TYPE_2__ {int fica_clr; int fica_sc; } ;
struct fire_msiqarg {TYPE_1__ fmqa_fica; } ;


 int FIRE_PCI_WRITE_8 (int ,int ,int ) ;
 int INTCLR_IDLE ;
 int critical_enter () ;
 int critical_exit () ;
 int fire_msiq_common (struct intr_vector*,struct fire_msiqarg*) ;

__attribute__((used)) static void
fire_msiq_filter(void *cookie)
{
 struct intr_vector *iv;
 struct fire_msiqarg *fmqa;

 iv = cookie;
 fmqa = iv->iv_icarg;
 critical_enter();
 fire_msiq_common(iv, fmqa);
 FIRE_PCI_WRITE_8(fmqa->fmqa_fica.fica_sc, fmqa->fmqa_fica.fica_clr,
     INTCLR_IDLE);
 critical_exit();
}

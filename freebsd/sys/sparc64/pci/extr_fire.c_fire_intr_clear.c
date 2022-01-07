
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_vector {struct fire_icarg* iv_icarg; } ;
struct fire_icarg {int fica_clr; int fica_sc; } ;


 int FIRE_PCI_WRITE_8 (int ,int ,int ) ;
 int INTCLR_IDLE ;

__attribute__((used)) static void
fire_intr_clear(void *arg)
{
 struct intr_vector *iv;
 struct fire_icarg *fica;

 iv = arg;
 fica = iv->iv_icarg;
 FIRE_PCI_WRITE_8(fica->fica_sc, fica->fica_clr, INTCLR_IDLE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {int pfik_rulerefs; } ;


 int PF_RULES_WASSERT () ;

void
pfi_kif_ref(struct pfi_kif *kif)
{

 PF_RULES_WASSERT();
 kif->pfik_rulerefs++;
}

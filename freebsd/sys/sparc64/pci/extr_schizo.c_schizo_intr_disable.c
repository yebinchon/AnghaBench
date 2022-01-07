
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct schizo_icarg {int sica_map; int sica_sc; } ;
struct intr_vector {int iv_vec; struct schizo_icarg* iv_icarg; } ;


 int SCHIZO_PCI_WRITE_8 (int ,int ,int ) ;

__attribute__((used)) static void
schizo_intr_disable(void *arg)
{
 struct intr_vector *iv = arg;
 struct schizo_icarg *sica = iv->iv_icarg;

 SCHIZO_PCI_WRITE_8(sica->sica_sc, sica->sica_map, iv->iv_vec);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psycho_icarg {int pica_map; int pica_sc; } ;
struct intr_vector {int iv_mid; int iv_vec; struct psycho_icarg* iv_icarg; } ;


 int INTMAP_ENABLE (int ,int ) ;
 int PSYCHO_WRITE8 (int ,int ,int ) ;

__attribute__((used)) static void
psycho_intr_enable(void *arg)
{
 struct intr_vector *iv = arg;
 struct psycho_icarg *pica = iv->iv_icarg;

 PSYCHO_WRITE8(pica->pica_sc, pica->pica_map,
     INTMAP_ENABLE(iv->iv_vec, iv->iv_mid));
}

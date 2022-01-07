
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbus_icarg {int sica_map; int sica_sc; } ;
struct intr_vector {int iv_mid; int iv_vec; struct sbus_icarg* iv_icarg; } ;


 int INTMAP_ENABLE (int ,int ) ;
 int SYSIO_WRITE8 (int ,int ,int ) ;

__attribute__((used)) static void
sbus_intr_enable(void *arg)
{
 struct intr_vector *iv = arg;
 struct sbus_icarg *sica = iv->iv_icarg;

 SYSIO_WRITE8(sica->sica_sc, sica->sica_map,
     INTMAP_ENABLE(iv->iv_vec, iv->iv_mid));
}

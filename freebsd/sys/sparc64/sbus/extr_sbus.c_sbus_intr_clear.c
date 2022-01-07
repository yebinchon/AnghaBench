
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbus_icarg {int sica_clr; int sica_sc; } ;
struct intr_vector {struct sbus_icarg* iv_icarg; } ;


 int INTCLR_IDLE ;
 int SYSIO_WRITE8 (int ,int ,int ) ;

__attribute__((used)) static void
sbus_intr_clear(void *arg)
{
 struct intr_vector *iv = arg;
 struct sbus_icarg *sica = iv->iv_icarg;

 SYSIO_WRITE8(sica->sica_sc, sica->sica_clr, INTCLR_IDLE);
}

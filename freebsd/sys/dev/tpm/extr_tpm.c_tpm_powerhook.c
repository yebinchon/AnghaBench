
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_softc {int dummy; } ;


 int PWR_RESUME ;
 int tpm_resume (struct tpm_softc*,int) ;
 int tpm_suspend (struct tpm_softc*,int) ;

void
tpm_powerhook(int why, void *self)
{
 struct tpm_softc *sc = (struct tpm_softc *)self;

 if (why != PWR_RESUME)
  tpm_suspend(sc, why);
 else
  tpm_resume(sc, why);
}

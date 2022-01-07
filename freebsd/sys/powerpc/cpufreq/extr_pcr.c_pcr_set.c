
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pcr_softc {int* pcr_vals; } ;
struct cf_setting {int freq; } ;
typedef int register_t ;
typedef int device_t ;


 int DELAY (int) ;
 int EINVAL ;
 int PSL_EE ;
 int PSR_COMPLETED ;
 int PSR_RECEIVED ;
 int SCOM_PCR ;
 int SCOM_PCR_BIT ;
 int SCOM_PSR ;
 struct pcr_softc* device_get_softc (int ) ;
 int isync () ;
 int mfmsr () ;
 int mtmsr (int) ;
 int read_scom (int ) ;
 int write_scom (int ,int) ;

__attribute__((used)) static int
pcr_set(device_t dev, const struct cf_setting *set)
{
 struct pcr_softc *sc;
 register_t pcr, msr;
 uint64_t psr;

 if (set == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);



 pcr = SCOM_PCR_BIT;

 if (set->freq == 10000)
  pcr |= sc->pcr_vals[0];
 else if (set->freq == 5000)
  pcr |= sc->pcr_vals[1];
 else if (set->freq == 2500)
  pcr |= sc->pcr_vals[2];

 msr = mfmsr();
 mtmsr(msr & ~PSL_EE); isync();



 write_scom(SCOM_PCR,0);
 write_scom(SCOM_PCR,SCOM_PCR_BIT);



 write_scom(SCOM_PCR, pcr);



 do {
  DELAY(100);
  psr = read_scom(SCOM_PSR);
 } while ((psr & PSR_RECEIVED) && !(psr & PSR_COMPLETED));

 mtmsr(msr); isync();

 return (0);
}

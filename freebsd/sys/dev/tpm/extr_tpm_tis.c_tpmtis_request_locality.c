
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tpm_sc {scalar_t__ interrupts; int mem_res; int intr_type; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int PWAIT ;
 int RD1 (struct tpm_sc*,int ) ;
 int TPM_ACCESS ;
 int TPM_ACCESS_LOC_ACTIVE ;
 int TPM_ACCESS_LOC_REQ ;
 int TPM_ACCESS_VALID ;
 int TPM_INT_STS_LOC_CHANGE ;
 int TPM_TIMEOUT_A ;
 int WR1 (struct tpm_sc*,int ,int ) ;
 int bus_barrier (int ,int ,int,int ) ;
 int pause (char*,int) ;
 int tick ;
 int tsleep (struct tpm_sc*,int ,char*,int) ;

__attribute__((used)) static bool
tpmtis_request_locality(struct tpm_sc *sc, int locality)
{
 uint8_t mask;
 int timeout;


 if (locality != 0)
  return (0);

 mask = TPM_ACCESS_LOC_ACTIVE | TPM_ACCESS_VALID;
 timeout = TPM_TIMEOUT_A;
 sc->intr_type = TPM_INT_STS_LOC_CHANGE;

 WR1(sc, TPM_ACCESS, TPM_ACCESS_LOC_REQ);
 bus_barrier(sc->mem_res, TPM_ACCESS, 1, BUS_SPACE_BARRIER_WRITE);
 if(sc->interrupts) {
  tsleep(sc, PWAIT, "TPMLOCREQUEST with INTR", timeout / tick);
  return ((RD1(sc, TPM_ACCESS) & mask) == mask);
 } else {
  while(timeout > 0) {
   if ((RD1(sc, TPM_ACCESS) & mask) == mask)
    return (1);

   pause("TPMLOCREQUEST POLLING", 1);
   timeout -= tick;
  }
 }

 return (0);
}

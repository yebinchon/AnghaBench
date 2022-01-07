
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_sc {int mem_res; int intr_type; } ;


 int AND4 (struct tpm_sc*,int ,int ) ;
 int BUS_SPACE_BARRIER_WRITE ;
 int OR4 (struct tpm_sc*,int ,int ) ;
 int TPM_INT_STS_CMD_RDY ;
 int TPM_STS ;
 int TPM_STS_CMD_RDY ;
 int TPM_TIMEOUT_B ;
 int bus_barrier (int ,int ,int,int ) ;
 int tpm_wait_for_u32 (struct tpm_sc*,int ,int ,int ,int ) ;

__attribute__((used)) static bool
tpmtis_go_ready(struct tpm_sc *sc)
{
 uint32_t mask;

 mask = TPM_STS_CMD_RDY;
 sc->intr_type = TPM_INT_STS_CMD_RDY;

 OR4(sc, TPM_STS, TPM_STS_CMD_RDY);
 bus_barrier(sc->mem_res, TPM_STS, 4, BUS_SPACE_BARRIER_WRITE);
 if (!tpm_wait_for_u32(sc, TPM_STS, mask, mask, TPM_TIMEOUT_B))
  return (0);

 AND4(sc, TPM_STS, ~TPM_STS_CMD_RDY);
 return (1);
}

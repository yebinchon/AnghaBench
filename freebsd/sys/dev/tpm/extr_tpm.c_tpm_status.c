
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct tpm_softc {int sc_bh; int sc_bt; } ;


 int TPM_STS ;
 int TPM_STS_MASK ;
 int bus_space_read_1 (int ,int ,int ) ;

u_int8_t
tpm_status(struct tpm_softc *sc)
{
 u_int8_t status;

 status = bus_space_read_1(sc->sc_bt, sc->sc_bh, TPM_STS) &
     TPM_STS_MASK;

 return status;
}

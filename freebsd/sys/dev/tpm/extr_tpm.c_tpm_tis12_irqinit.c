
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct tpm_softc {int sc_vector; int sc_capabilities; int sc_bh; int sc_bt; } ;
struct TYPE_2__ {int flags; } ;


 int IRQUNK ;
 int TPM_DEV_NOINTS ;
 int TPM_GLOBAL_INT_ENABLE ;
 int TPM_INTERRUPT_ENABLE ;
 int TPM_INTF_INT_EDGE_RISING ;
 int TPM_INTF_INT_LEVEL_HIGH ;
 int TPM_INT_EDGE_RISING ;
 int TPM_INT_LEVEL_HIGH ;
 int TPM_INT_LEVEL_LOW ;
 int TPM_INT_STATUS ;
 int TPM_INT_VECTOR ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 TYPE_1__* tpm_devs ;

int
tpm_tis12_irqinit(struct tpm_softc *sc, int irq, int idx)
{
 u_int32_t r;

 if ((irq == IRQUNK) || (tpm_devs[idx].flags & TPM_DEV_NOINTS)) {
  sc->sc_vector = IRQUNK;
  return 0;
 }


 bus_space_write_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE,
     bus_space_read_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE) &
     ~TPM_GLOBAL_INT_ENABLE);
 bus_space_write_4(sc->sc_bt, sc->sc_bh, TPM_INT_STATUS,
     bus_space_read_4(sc->sc_bt, sc->sc_bh, TPM_INT_STATUS));


 bus_space_write_1(sc->sc_bt, sc->sc_bh, TPM_INT_VECTOR, irq);
 sc->sc_vector = irq;


 if (sc->sc_capabilities & TPM_INTF_INT_EDGE_RISING)
  r = TPM_INT_EDGE_RISING;
 else if (sc->sc_capabilities & TPM_INTF_INT_LEVEL_HIGH)
  r = TPM_INT_LEVEL_HIGH;
 else
  r = TPM_INT_LEVEL_LOW;
 bus_space_write_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE, r);

 return 0;
}

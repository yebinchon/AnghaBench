
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mrsas_softc {int mask_interrupts; } ;


 int mrsas_read_reg (struct mrsas_softc*,int ) ;
 int mrsas_reg_set ;
 int mrsas_write_reg (struct mrsas_softc*,int ,int) ;
 int offsetof (int ,int ) ;
 int outbound_intr_mask ;

void
mrsas_disable_intr(struct mrsas_softc *sc)
{
 u_int32_t mask = 0xFFFFFFFF;
 u_int32_t status;

 sc->mask_interrupts = 1;
 mrsas_write_reg(sc, offsetof(mrsas_reg_set, outbound_intr_mask), mask);

 status = mrsas_read_reg(sc, offsetof(mrsas_reg_set, outbound_intr_mask));
}

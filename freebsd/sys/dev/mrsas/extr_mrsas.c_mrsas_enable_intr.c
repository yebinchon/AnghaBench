
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mrsas_softc {scalar_t__ mask_interrupts; } ;


 int MFI_FUSION_ENABLE_INTERRUPT_MASK ;
 int mrsas_read_reg (struct mrsas_softc*,int ) ;
 int mrsas_reg_set ;
 int mrsas_write_reg (struct mrsas_softc*,int ,int ) ;
 int offsetof (int ,int ) ;
 int outbound_intr_mask ;
 int outbound_intr_status ;

void
mrsas_enable_intr(struct mrsas_softc *sc)
{
 u_int32_t mask = MFI_FUSION_ENABLE_INTERRUPT_MASK;
 u_int32_t status;

 sc->mask_interrupts = 0;
 mrsas_write_reg(sc, offsetof(mrsas_reg_set, outbound_intr_status), ~0);
 status = mrsas_read_reg(sc, offsetof(mrsas_reg_set, outbound_intr_status));

 mrsas_write_reg(sc, offsetof(mrsas_reg_set, outbound_intr_mask), ~mask);
 status = mrsas_read_reg(sc, offsetof(mrsas_reg_set, outbound_intr_mask));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mrsas_softc {int dummy; } ;


 int MFI_FUSION_ENABLE_INTERRUPT_MASK ;
 int mrsas_read_reg_with_retries (struct mrsas_softc*,int ) ;
 int mrsas_reg_set ;
 int offsetof (int ,int ) ;
 int outbound_intr_status ;

__attribute__((used)) static int
mrsas_clear_intr(struct mrsas_softc *sc)
{
 u_int32_t status;


 status = mrsas_read_reg_with_retries(sc, offsetof(mrsas_reg_set, outbound_intr_status));


 if (!(status & MFI_FUSION_ENABLE_INTERRUPT_MASK))
  return (0);


 return (1);
}

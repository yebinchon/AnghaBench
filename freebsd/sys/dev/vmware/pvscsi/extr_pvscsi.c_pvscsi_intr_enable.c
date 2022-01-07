
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {scalar_t__ use_msg; } ;


 int PVSCSI_INTR_CMPL_MASK ;
 int PVSCSI_INTR_MSG_MASK ;
 int PVSCSI_REG_OFFSET_INTR_MASK ;
 int pvscsi_reg_write (struct pvscsi_softc*,int ,int ) ;

__attribute__((used)) static inline void
pvscsi_intr_enable(struct pvscsi_softc *sc)
{
 uint32_t mask;

 mask = PVSCSI_INTR_CMPL_MASK;
 if (sc->use_msg) {
  mask |= PVSCSI_INTR_MSG_MASK;
 }

 pvscsi_reg_write(sc, PVSCSI_REG_OFFSET_INTR_MASK, mask);
}

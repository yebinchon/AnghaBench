
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int dummy; } ;


 int PVSCSI_REG_OFFSET_INTR_MASK ;
 int pvscsi_reg_write (struct pvscsi_softc*,int ,int ) ;

__attribute__((used)) static inline void
pvscsi_intr_disable(struct pvscsi_softc *sc)
{

 pvscsi_reg_write(sc, PVSCSI_REG_OFFSET_INTR_MASK, 0);
}

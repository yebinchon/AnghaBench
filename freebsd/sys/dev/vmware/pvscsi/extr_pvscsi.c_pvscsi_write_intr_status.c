
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int dummy; } ;


 int PVSCSI_REG_OFFSET_INTR_STATUS ;
 int pvscsi_reg_write (struct pvscsi_softc*,int ,int ) ;

__attribute__((used)) static inline void
pvscsi_write_intr_status(struct pvscsi_softc *sc, uint32_t val)
{

 pvscsi_reg_write(sc, PVSCSI_REG_OFFSET_INTR_STATUS, val);
}

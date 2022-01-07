
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int dummy; } ;


 int PVSCSI_REG_OFFSET_INTR_STATUS ;
 int pvscsi_reg_read (struct pvscsi_softc*,int ) ;

__attribute__((used)) static inline uint32_t
pvscsi_read_intr_status(struct pvscsi_softc *sc)
{

 return (pvscsi_reg_read(sc, PVSCSI_REG_OFFSET_INTR_STATUS));
}

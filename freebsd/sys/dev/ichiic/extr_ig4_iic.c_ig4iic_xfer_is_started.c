
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ig4iic_softc_t ;


 int IG4_INTR_START_DET ;
 int IG4_INTR_STOP_DET ;
 int IG4_REG_RAW_INTR_STAT ;
 int reg_read (int *,int ) ;

__attribute__((used)) static bool
ig4iic_xfer_is_started(ig4iic_softc_t *sc)
{




 return ((reg_read(sc, IG4_REG_RAW_INTR_STAT) &
     (IG4_INTR_START_DET | IG4_INTR_STOP_DET)) == IG4_INTR_START_DET);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ig4iic_softc_t ;


 int IG4_REG_CLR_INTR ;
 int reg_read (int *,int ) ;
 int set_slave_addr (int *,int) ;

__attribute__((used)) static int
ig4iic_xfer_start(ig4iic_softc_t *sc, uint16_t slave, bool repeated_start)
{
 set_slave_addr(sc, slave >> 1);

 if (!repeated_start) {




  reg_read(sc, IG4_REG_CLR_INTR);
 }

 return (0);
}

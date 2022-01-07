
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ig4iic_softc_t ;


 int IG4_I2C_ABORT ;
 int IG4_I2C_ENABLE ;
 int IG4_INTR_STOP_DET ;
 int IIC_ESTATUS ;
 int set_controller (int *,int) ;
 int wait_intr (int *,int ) ;

__attribute__((used)) static int
ig4iic_xfer_abort(ig4iic_softc_t *sc)
{
 int error;


 set_controller(sc, IG4_I2C_ABORT | IG4_I2C_ENABLE);




 error = wait_intr(sc, IG4_INTR_STOP_DET);
 set_controller(sc, IG4_I2C_ENABLE);

 return (error == IIC_ESTATUS ? 0 : error);
}

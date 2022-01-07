
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iic_dp_aux_data {int running; } ;
typedef int device_t ;


 int MODE_I2C_READ ;
 int MODE_I2C_STOP ;
 int MODE_I2C_WRITE ;
 struct iic_dp_aux_data* device_get_softc (int ) ;
 int iic_dp_aux_transaction (int ,int,int ,int *) ;

__attribute__((used)) static void
iic_dp_aux_stop(device_t idev, bool reading)
{
 struct iic_dp_aux_data *aux_data;
 int mode;

 aux_data = device_get_softc(idev);
 mode = MODE_I2C_STOP;
 if (reading)
  mode |= MODE_I2C_READ;
 else
  mode |= MODE_I2C_WRITE;
 if (aux_data->running) {
  (void)iic_dp_aux_transaction(idev, mode, 0, ((void*)0));
  aux_data->running = 0;
 }
}

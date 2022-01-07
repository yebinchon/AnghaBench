
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iic_dp_aux_data {int running; int address; } ;
typedef int device_t ;


 int MODE_I2C_READ ;
 int MODE_I2C_START ;
 int MODE_I2C_WRITE ;
 struct iic_dp_aux_data* device_get_softc (int ) ;
 int iic_dp_aux_transaction (int ,int,int ,int *) ;

__attribute__((used)) static int
iic_dp_aux_address(device_t idev, u16 address, bool reading)
{
 struct iic_dp_aux_data *aux_data;
 int mode, ret;

 aux_data = device_get_softc(idev);
 mode = MODE_I2C_START;
 if (reading)
  mode |= MODE_I2C_READ;
 else
  mode |= MODE_I2C_WRITE;
 aux_data->address = address;
 aux_data->running = 1;
 ret = iic_dp_aux_transaction(idev, mode, 0, ((void*)0));
 return (ret);
}

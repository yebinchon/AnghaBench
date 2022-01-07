
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iic_dp_aux_data {int running; } ;
typedef int device_t ;


 int EIO ;
 int MODE_I2C_READ ;
 struct iic_dp_aux_data* device_get_softc (int ) ;
 int iic_dp_aux_transaction (int ,int ,int ,int *) ;

__attribute__((used)) static int
iic_dp_aux_get_byte(device_t idev, u8 *byte_ret)
{
 struct iic_dp_aux_data *aux_data;
 int ret;

 aux_data = device_get_softc(idev);

 if (!aux_data->running)
  return (-EIO);

 ret = iic_dp_aux_transaction(idev, MODE_I2C_READ, 0, byte_ret);
 return (ret);
}

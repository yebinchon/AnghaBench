
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_dp_aux_data {int (* aux_ch ) (int ,int,int ,int *) ;} ;
typedef int device_t ;


 struct iic_dp_aux_data* device_get_softc (int ) ;
 int stub1 (int ,int,int ,int *) ;

__attribute__((used)) static int
iic_dp_aux_transaction(device_t idev, int mode, uint8_t write_byte,
    uint8_t *read_byte)
{
 struct iic_dp_aux_data *aux_data;
 int ret;

 aux_data = device_get_softc(idev);
 ret = (*aux_data->aux_ch)(idev, mode, write_byte, read_byte);
 if (ret < 0)
  return (ret);
 return (0);
}

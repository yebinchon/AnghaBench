
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iic_msg {int dummy; } ;
typedef int device_t ;


 int IICBUS_TRANSFER (int ,struct iic_msg*,int ) ;
 int device_get_parent (int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int) ;

int
iicbus_transfer_excl(device_t dev, struct iic_msg *msgs, uint32_t nmsgs,
    int how)
{
 device_t bus;
 int error;

 bus = device_get_parent(dev);
 error = iicbus_request_bus(bus, dev, how);
 if (error == 0)
  error = IICBUS_TRANSFER(bus, msgs, nmsgs);
 iicbus_release_bus(bus, dev);
 return (error);
}

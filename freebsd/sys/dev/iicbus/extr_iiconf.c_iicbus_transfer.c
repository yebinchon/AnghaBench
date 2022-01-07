
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iic_msg {int dummy; } ;
typedef int device_t ;


 int IICBUS_TRANSFER (int ,struct iic_msg*,int ) ;
 int device_get_parent (int ) ;

int
iicbus_transfer(device_t bus, struct iic_msg *msgs, uint32_t nmsgs)
{

 return (IICBUS_TRANSFER(device_get_parent(bus), msgs, nmsgs));
}

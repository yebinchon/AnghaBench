
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iic_msg {int dummy; } ;
typedef int device_t ;


 int IICBB_POST_XFER (int ) ;
 int IICBB_PRE_XFER (int ) ;
 int device_get_parent (int ) ;
 int iicbus_transfer_gen (int ,struct iic_msg*,int ) ;

__attribute__((used)) static int
iicbb_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 int error;

 error = IICBB_PRE_XFER(device_get_parent(dev));
 if (error)
  return (error);

 error = iicbus_transfer_gen(dev, msgs, nmsgs);

 IICBB_POST_XFER(device_get_parent(dev));
 return (error);
}

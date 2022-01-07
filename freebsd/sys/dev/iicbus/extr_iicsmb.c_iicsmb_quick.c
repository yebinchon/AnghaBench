
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iic_msg {int * member_3; int member_2; int member_1; int member_0; } ;
typedef int device_t ;


 int IIC_M_RD ;
 int IIC_M_WR ;
 int SMB_EINVAL ;


 int TRANSFER_MSGS (int ,struct iic_msg*) ;
 int iic2smb_error (int) ;

__attribute__((used)) static int
iicsmb_quick(device_t dev, u_char slave, int how)
{
 struct iic_msg msgs[] = {
      { slave, how == 128 ? IIC_M_WR : IIC_M_RD, 0, ((void*)0) },
 };
 int error;

 switch (how) {
 case 128:
 case 129:
  break;
 default:
  return (SMB_EINVAL);
 }

 error = TRANSFER_MSGS(dev, msgs);
 return (iic2smb_error(error));
}

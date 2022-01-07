
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iic_msg {int member_2; char* member_3; int member_1; int member_0; } ;
typedef int device_t ;


 int IIC_M_WR ;
 int TRANSFER_MSGS (int ,struct iic_msg*) ;
 int iic2smb_error (int) ;

__attribute__((used)) static int
iicsmb_sendb(device_t dev, u_char slave, char byte)
{
 struct iic_msg msgs[] = {
      { slave, IIC_M_WR, 1, &byte },
 };
 int error;

 error = TRANSFER_MSGS(dev, msgs);
 return (iic2smb_error(error));
}

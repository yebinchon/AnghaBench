
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_char ;
struct iic_msg {int member_1; int member_2; char* member_3; int member_0; } ;
typedef int device_t ;


 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int TRANSFER_MSGS (int ,struct iic_msg*) ;
 int iic2smb_error (int) ;
 int nitems (int*) ;

__attribute__((used)) static int
iicsmb_readw(device_t dev, u_char slave, char cmd, short *word)
{
 uint8_t buf[2];
 struct iic_msg msgs[] = {
      { slave, IIC_M_WR | IIC_M_NOSTOP, 1, &cmd },
      { slave, IIC_M_RD, nitems(buf), buf },
 };
 int error;

 error = TRANSFER_MSGS(dev, msgs);
 if (error == 0)
  *word = ((uint16_t)buf[1] << 8) | buf[0];
 return (iic2smb_error(error));
}

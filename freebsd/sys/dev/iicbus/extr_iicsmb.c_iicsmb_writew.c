
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int u_char ;
struct iic_msg {char* member_3; int member_2; int member_1; int member_0; } ;
typedef int device_t ;


 int IIC_M_WR ;
 int TRANSFER_MSGS (int ,struct iic_msg*) ;
 int iic2smb_error (int) ;
 int nitems (char*) ;

__attribute__((used)) static int
iicsmb_writew(device_t dev, u_char slave, char cmd, short word)
{
 uint8_t bytes[] = { cmd, word & 0xff, word >> 8 };
 struct iic_msg msgs[] = {
      { slave, IIC_M_WR, nitems(bytes), bytes },
 };
 int error;

 error = TRANSFER_MSGS(dev, msgs);
 return (iic2smb_error(error));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint16_t ;
typedef int u_char ;
struct iic_msg {int member_1; char* member_3; int member_2; int member_0; } ;
typedef int device_t ;


 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int TRANSFER_MSGS (int ,struct iic_msg*) ;
 int iic2smb_error (int) ;
 int nitems (char*) ;

__attribute__((used)) static int
iicsmb_pcall(device_t dev, u_char slave, char cmd, short sdata, short *rdata)
{
 uint8_t in[3] = { cmd, sdata & 0xff, sdata >> 8 };
 uint8_t out[2];
 struct iic_msg msgs[] = {
      { slave, IIC_M_WR | IIC_M_NOSTOP, nitems(in), in },
      { slave, IIC_M_RD, nitems(out), out },
 };
 int error;

 error = TRANSFER_MSGS(dev, msgs);
 if (error == 0)
  *rdata = ((uint16_t)out[1] << 8) | out[0];
 return (iic2smb_error(error));
}

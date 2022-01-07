
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef char u_char ;
struct iic_msg {char member_0; int member_1; char member_2; char* member_3; } ;
typedef int device_t ;


 int IIC_M_NOSTART ;
 int IIC_M_NOSTOP ;
 int IIC_M_WR ;
 int SMB_EINVAL ;
 char SMB_MAXBLOCKSIZE ;
 int TRANSFER_MSGS (int ,struct iic_msg*) ;
 int iic2smb_error (int) ;
 char nitems (char*) ;

__attribute__((used)) static int
iicsmb_bwrite(device_t dev, u_char slave, char cmd, u_char count, char *buf)
{
 uint8_t bytes[2] = { cmd, count };
 struct iic_msg msgs[] = {
      { slave, IIC_M_WR | IIC_M_NOSTOP, nitems(bytes), bytes },
      { slave, IIC_M_WR | IIC_M_NOSTART, count, buf },
 };
 int error;

 if (count > SMB_MAXBLOCKSIZE || count == 0)
  return (SMB_EINVAL);
 error = TRANSFER_MSGS(dev, msgs);
 return (iic2smb_error(error));
}

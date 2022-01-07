
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iic_msg {int member_0; int member_1; int member_2; char* member_3; int len; } ;
typedef int device_t ;


 int IIC_M_NOSTART ;
 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int IIC_WAIT ;
 int SMB_EINVAL ;
 int SMB_MAXBLOCKSIZE ;
 int TRANSFER_MSGS (int ,struct iic_msg*) ;
 int device_get_parent (int ) ;
 int iic2smb_error (int) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;

__attribute__((used)) static int
iicsmb_bread(device_t dev, u_char slave, char cmd, u_char *count, char *buf)
{
 struct iic_msg msgs[] = {
      { slave, IIC_M_WR | IIC_M_NOSTOP, 1, &cmd },
      { slave, IIC_M_RD | IIC_M_NOSTOP, 1, count },
 };
 struct iic_msg block_msg[] = {
      { slave, IIC_M_RD | IIC_M_NOSTART, 0, buf },
 };
 device_t parent = device_get_parent(dev);
 int error;


 error = iicbus_request_bus(parent, dev, IIC_WAIT);
 if (error == 0)
  error = TRANSFER_MSGS(dev, msgs);
 if (error == 0) {




  if (*count > SMB_MAXBLOCKSIZE || *count == 0)
   block_msg[0].len = 1;
  else
   block_msg[0].len = *count;
  error = TRANSFER_MSGS(dev, block_msg);
  if (*count > SMB_MAXBLOCKSIZE || *count == 0)
   error = SMB_EINVAL;
 }
 (void)iicbus_release_bus(parent, dev);
 return (iic2smb_error(error));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int device_t ;


 int IIC_EBUSERR ;
 int IIC_NOERR ;
 int OC_COMMAND_WRITE ;
 int device_printf (int ,char*,...) ;
 scalar_t__ iicoc_wr_ack_cmd (int ,char,int ) ;
 scalar_t__ iicoc_wr_cmd (int ,char,int ) ;

__attribute__((used)) static int
iicoc_write(device_t dev, const char *buf, int len,
    int *sent, int timeout )
{
 uint8_t value;
 int i;

 value = buf[0];

 if (iicoc_wr_ack_cmd(dev, value, OC_COMMAND_WRITE)) {
  device_printf(dev, "I2C write slave offset failed.\n");
  goto i2c_tx_error;
 }

 for (i = 1; i < len; i++) {

  value = buf[i];
  if (iicoc_wr_cmd(dev, value, OC_COMMAND_WRITE)) {
   device_printf(dev, "I2C write data byte %d failed.\n",
       i);
   goto i2c_tx_error;
  }
 }
 *sent = len;
 return (IIC_NOERR);

i2c_tx_error:
 return (IIC_EBUSERR);
}

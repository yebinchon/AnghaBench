
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int REG_CMD1 ;
 int REG_DATA1 ;
 int REG_DATA2 ;
 int device_printf (int ,char*,int) ;
 int hz ;
 scalar_t__ isl_read_byte (int ,int ,int*) ;
 scalar_t__ isl_write_byte (int ,int ,int) ;
 int pause (char*,int) ;

__attribute__((used)) static int
isl_read_sensor(device_t dev, uint8_t cmd_mask)
{
 uint8_t rbyte;
 uint8_t cmd;
 int ret;

 if (isl_read_byte(dev, REG_CMD1, &rbyte) != 0) {
  device_printf(dev,
      "Couldn't read first byte before issuing command %d\n",
      cmd_mask);
  return (-1);
 }

 cmd = (rbyte & 0x1f) | cmd_mask;
 if (isl_write_byte(dev, REG_CMD1, cmd) != 0) {
  device_printf(dev, "Couldn't write command %d\n", cmd_mask);
  return (-1);
 }

 pause("islconv", hz/10);

 if (isl_read_byte(dev, REG_DATA1, &rbyte) != 0) {
  device_printf(dev,
      "Couldn't read first byte after command %d\n", cmd_mask);
  return (-1);
 }

 ret = rbyte;
 if (isl_read_byte(dev, REG_DATA2, &rbyte) != 0) {
  device_printf(dev, "Couldn't read second byte after command %d\n", cmd_mask);
  return (-1);
 }
 ret += rbyte << 8;

 return (ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int IIC_LAST_READ ;
 int LSB ;
 int iicbus_read (int ,char*,int,int*,int ,int ) ;
 int iicbus_start (int ,int,int ) ;
 int iicbus_stop (int ) ;

int
iicbus_block_read(device_t bus, u_char slave, char *buf, int len, int *read)
{
 u_char addr = slave | LSB;
 int error;

 if ((error = iicbus_start(bus, addr, 0)))
  return (error);

 error = iicbus_read(bus, buf, len, read, IIC_LAST_READ, 0);

 iicbus_stop(bus);

 return (error);
}

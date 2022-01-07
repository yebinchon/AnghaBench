
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iic_msg {int slave; int flags; int len; int buf; } ;
typedef int device_t ;


 int IIC_ENOTSUPP ;
 int IIC_ERESOURCE ;
 int IIC_LAST_READ ;
 int IIC_M_NOSTART ;
 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int LSB ;
 int M_TEMP ;
 int device_get_children (int ,int **,int*) ;
 int free (int *,int ) ;
 int iicbus_read (int ,int ,int ,int*,int ,int ) ;
 int iicbus_repeated_start (int ,int,int ) ;
 int iicbus_start (int ,int,int ) ;
 int iicbus_stop (int ) ;
 int iicbus_write (int ,int ,int ,int*,int ) ;

int
iicbus_transfer_gen(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 int i, error, lenread, lenwrote, nkid, rpstart, addr;
 device_t *children, bus;
 bool started;

 if ((error = device_get_children(dev, &children, &nkid)) != 0)
  return (IIC_ERESOURCE);
 if (nkid != 1) {
  free(children, M_TEMP);
  return (IIC_ENOTSUPP);
 }
 bus = children[0];
 rpstart = 0;
 free(children, M_TEMP);
 started = 0;
 for (i = 0, error = 0; i < nmsgs && error == 0; i++) {
  addr = msgs[i].slave;
  if (msgs[i].flags & IIC_M_RD)
   addr |= LSB;
  else
   addr &= ~LSB;

  if (!(msgs[i].flags & IIC_M_NOSTART)) {
   if (rpstart)
    error = iicbus_repeated_start(bus, addr, 0);
   else
    error = iicbus_start(bus, addr, 0);
   if (error != 0)
    break;
   started = 1;
  }

  if (msgs[i].flags & IIC_M_RD)
   error = iicbus_read(bus, msgs[i].buf, msgs[i].len,
       &lenread, IIC_LAST_READ, 0);
  else
   error = iicbus_write(bus, msgs[i].buf, msgs[i].len,
       &lenwrote, 0);
  if (error != 0)
   break;

  if (!(msgs[i].flags & IIC_M_NOSTOP)) {
   rpstart = 0;
   iicbus_stop(bus);
  } else {
   rpstart = 1;
  }
 }
 if (error != 0 && started)
  iicbus_stop(bus);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EADDRNOTAVAIL ;
 int EALREADY ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EOVERFLOW ;
 int EPROTO ;
 int ETIMEDOUT ;
 int EWOULDBLOCK ;







 int IIC_ERRNO ;





int
iic2errno(int iic_status)
{
 switch (iic_status) {
 case 128: return (0);
 case 137: return (EALREADY);
 case 136: return (EIO);
 case 130: return (ETIMEDOUT);
 case 138: return (EWOULDBLOCK);
 case 131: return (EPROTO);
 case 129: return (EIO);
 case 133: return (EOVERFLOW);
 case 134: return (EOPNOTSUPP);
 case 135: return (EADDRNOTAVAIL);
 case 132: return (ENOMEM);
 default:
  if ((iic_status & IIC_ERRNO) == 0)
   return (EIO);
  if ((iic_status & 0xFFFF0000) != 0)
   return (iic_status);
  return (iic_status & ~IIC_ERRNO);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EBUSY ;
 int ECONNABORTED ;
 int ECONNREFUSED ;
 int ECONNRESET ;
 int EEXIST ;
 int EHOSTDOWN ;
 int EINVAL ;
 int EIO ;
 int EMLINK ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSYS ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;

__attribute__((used)) static int
ng_btsocket_l2cap_result2errno(int result)
{
 switch (result) {
 case 0x00:
  return (0);

 case 0x01:
  return (ENODEV);

 case 0x02:
  return (ENOTCONN);

 case 0x03:
  return (EIO);

 case 0x04:
  return (EHOSTDOWN);

 case 0x05:
 case 0x06:
 case 0x18:
 case 0x21:
 case 0x24:
 case 0x25:
 case 0x26:
  return (EACCES);

 case 0x07:
  return (ENOMEM);

 case 0x08:
 case 0x10:
 case 0x22:
 case 0xee:
 case 0xeeee:
  return (ETIMEDOUT);

 case 0x09:
 case 0x0a:
  return (EMLINK);

 case 0x0b:
  return (EEXIST);

 case 0x0c:
  return (EBUSY);

 case 0x0d:
 case 0x0e:
 case 0x0f:
 case 0x1b:
 case 0x1c:
 case 0x1d:
  return (ECONNREFUSED);

 case 0x11:
 case 0x19:
 case 0x1a:
 case 0x20:
 case 0x27:
 case 0x29:
  return (EOPNOTSUPP);

 case 0x12:
 case 0x1e:
  return (EINVAL);

 case 0x13:
 case 0x14:
 case 0x15:
  return (ECONNRESET);

 case 0x16:
  return (ECONNABORTED);







 }

 return (ENOSYS);
}

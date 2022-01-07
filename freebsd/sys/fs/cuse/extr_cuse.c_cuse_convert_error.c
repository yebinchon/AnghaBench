
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EFAULT ;
 int EINTR ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EWOULDBLOCK ;

__attribute__((used)) static int
cuse_convert_error(int error)
{
 ;
 switch (error) {
 case 132:
  return (0);
 case 135:
  return (EBUSY);
 case 128:
  return (EWOULDBLOCK);
 case 133:
  return (EINVAL);
 case 130:
  return (ENOMEM);
 case 134:
  return (EFAULT);
 case 129:
  return (EINTR);
 case 131:
  return (ENODEV);
 default:
  return (ENXIO);
 }
}

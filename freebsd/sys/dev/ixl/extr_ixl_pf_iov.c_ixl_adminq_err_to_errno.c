
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum i40e_admin_queue_err { ____Placeholder_i40e_admin_queue_err } i40e_admin_queue_err ;


 int E2BIG ;
 int EACCES ;
 int EAGAIN ;
 int EBUSY ;
 int EEXIST ;
 int EFAULT ;
 int EFBIG ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int ENOSYS ;
 int ENOTTY ;
 int ENXIO ;
 int EPERM ;
 int ERANGE ;
 int ESRCH ;
__attribute__((used)) static int
ixl_adminq_err_to_errno(enum i40e_admin_queue_err err)
{

 switch (err) {
 case 130:
  return (EPERM);
 case 136:
  return (ENOENT);
 case 128:
  return (ESRCH);
 case 140:
  return (EINTR);
 case 138:
  return (EIO);
 case 131:
  return (ENXIO);
 case 148:
  return (E2BIG);
 case 146:
  return (EAGAIN);
 case 135:
  return (ENOMEM);
 case 147:
  return (EACCES);
 case 143:
  return (EFAULT);
 case 145:
  return (EBUSY);
 case 144:
  return (EEXIST);
 case 139:
  return (EINVAL);
 case 132:
  return (ENOTTY);
 case 134:
  return (ENOSPC);
 case 133:
  return (ENOSYS);
 case 129:
  return (ERANGE);
 case 141:
  return (EINVAL);
 case 149:
  return (EFAULT);
 case 137:
  return (EPERM);
 case 142:
  return (EFBIG);
 default:
  return (EINVAL);
 }
}

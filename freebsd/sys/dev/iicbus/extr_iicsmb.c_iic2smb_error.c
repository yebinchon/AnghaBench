
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMB_EBUSERR ;
 int SMB_EBUSY ;
 int SMB_ENOACK ;
 int SMB_ENOERR ;
 int SMB_ENOTSUPP ;
 int SMB_ETIMEOUT ;

__attribute__((used)) static int
iic2smb_error(int error)
{
 switch (error) {
 case 128:
  return (SMB_ENOERR);
 case 137:
  return (SMB_EBUSERR);
 case 136:
  return (SMB_ENOACK);
 case 130:
  return (SMB_ETIMEOUT);
 case 138:
  return (SMB_EBUSY);
 case 131:
  return (SMB_EBUSERR);
 case 129:
  return (SMB_EBUSERR);
 case 133:
  return (SMB_EBUSERR);
 case 134:
  return (SMB_ENOTSUPP);
 case 135:
  return (SMB_EBUSERR);
 case 132:
  return (SMB_EBUSERR);
 default:
  return (SMB_EBUSERR);
 }
}

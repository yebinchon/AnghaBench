
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int DBG (char*,int,...) ;
 int SMB_EABORT ;



int
ichsmb_callback(device_t dev, int index, void *data)
{
 int smb_error = 0;

 DBG("index=%d how=%d\n", index, data ? *(int *)data : -1);
 switch (index) {
 case 128:
  break;
 case 129:
  break;
 default:
  smb_error = SMB_EABORT;
  break;
 }
 DBG("smb_error=%d\n", smb_error);
 return (smb_error);
}

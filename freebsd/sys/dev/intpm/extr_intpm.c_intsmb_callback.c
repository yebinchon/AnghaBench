
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int SMB_EINVAL ;



__attribute__((used)) static int
intsmb_callback(device_t dev, int index, void *data)
{
 int error = 0;

 switch (index) {
 case 128:
  break;
 case 129:
  break;
 default:
  error = SMB_EINVAL;
 }

 return (error);
}

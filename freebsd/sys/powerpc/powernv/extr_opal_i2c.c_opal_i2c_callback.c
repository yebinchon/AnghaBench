
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int caddr_t ;


 int EINVAL ;



__attribute__((used)) static int
opal_i2c_callback(device_t dev, int index, caddr_t data)
{
 int error = 0;

 switch (index) {
 case 128:
  break;

 case 129:
  break;

 default:
  error = EINVAL;
 }

 return (error);
}

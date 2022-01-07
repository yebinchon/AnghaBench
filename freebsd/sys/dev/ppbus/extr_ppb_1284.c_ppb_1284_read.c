
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EINVAL ;


 int spp_1284_read (int ,int,char*,int,int*) ;

int
ppb_1284_read(device_t bus, int mode, char *buffer,
  int max, int *read)
{
 int error = 0;

 switch (mode) {
 case 128:
 case 129:
  error = spp_1284_read(bus, mode, buffer, max, read);
  break;
 default:
  return (EINVAL);
 }

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int caddr_t ;



int
iicbus_null_callback(device_t dev, int index, caddr_t data)
{

 return (0);
}

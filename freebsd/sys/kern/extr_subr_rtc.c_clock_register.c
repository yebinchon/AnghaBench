
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int clock_register_flags (int ,long,int ) ;

void
clock_register(device_t dev, long res)
{

 clock_register_flags(dev, res, 0);
}

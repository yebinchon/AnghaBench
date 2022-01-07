
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int enable_disable_all (int ,int) ;

int
fdt_clock_enable_all(device_t consumer)
{

 return (enable_disable_all(consumer, 1));
}

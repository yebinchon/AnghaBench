
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int clock_unregister (int ) ;

__attribute__((used)) static int
ds3231_detach(device_t dev)
{

 clock_unregister(dev);
 return (0);
}

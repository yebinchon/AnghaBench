
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bhnd_generic_suspend (int ) ;

int
siba_suspend(device_t dev)
{
 return (bhnd_generic_suspend(dev));
}

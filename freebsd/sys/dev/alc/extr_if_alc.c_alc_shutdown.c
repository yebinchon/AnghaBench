
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int alc_suspend (int ) ;

__attribute__((used)) static int
alc_shutdown(device_t dev)
{

 return (alc_suspend(dev));
}

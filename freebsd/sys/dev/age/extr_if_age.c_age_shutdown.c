
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int age_suspend (int ) ;

__attribute__((used)) static int
age_shutdown(device_t dev)
{

 return (age_suspend(dev));
}

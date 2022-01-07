
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int xl_suspend (int ) ;

__attribute__((used)) static int
xl_shutdown(device_t dev)
{

 return (xl_suspend(dev));
}

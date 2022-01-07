
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int request_mutex; } ;


 int bus_generic_suspend (int ) ;
 int sx_xlock (int *) ;
 TYPE_1__ xs ;

__attribute__((used)) static int
xs_suspend(device_t dev)
{
 int error;


 error = bus_generic_suspend(dev);
 if (error != 0)
  return (error);

 sx_xlock(&xs.request_mutex);

 return (0);
}

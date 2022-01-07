
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_shutdown (int ) ;
 int vtmmio_stop (int ) ;

__attribute__((used)) static int
vtmmio_shutdown(device_t dev)
{

 (void) bus_generic_shutdown(dev);


 vtmmio_stop(dev);

 return (0);
}

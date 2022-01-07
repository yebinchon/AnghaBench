
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;

__attribute__((used)) static int
pwmbus_detach(device_t dev)
{
 int rv;

 if ((rv = bus_generic_detach(dev)) == 0)
  rv = device_delete_children(dev);

 return (rv);
}

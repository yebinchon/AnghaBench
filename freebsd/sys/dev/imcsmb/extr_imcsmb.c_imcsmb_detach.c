
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;

__attribute__((used)) static int
imcsmb_detach(device_t dev)
{
 int rc;


 rc = bus_generic_detach(dev);
 if (rc == 0) {

  rc = device_delete_children(dev);
 }

 return (rc);
}

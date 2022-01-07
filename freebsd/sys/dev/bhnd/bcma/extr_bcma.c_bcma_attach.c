
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bcma_add_children (int ) ;
 int device_delete_children (int ) ;

int
bcma_attach(device_t dev)
{
 int error;


 if ((error = bcma_add_children(dev))) {
  device_delete_children(dev);
  return (error);
 }

 return (0);
}

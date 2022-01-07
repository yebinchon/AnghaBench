
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EINVAL ;


 int device_get_parent (int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int) ;

__attribute__((used)) static int
iicsmb_callback(device_t dev, int index, void *data)
{
 device_t parent = device_get_parent(dev);
 int error = 0;
 int how;

 switch (index) {
 case 128:

  how = *(int *)data;
  error = iicbus_request_bus(parent, dev, how);
  break;

 case 129:

  error = iicbus_release_bus(parent, dev);
  break;

 default:
  error = EINVAL;
 }

 return (error);
}

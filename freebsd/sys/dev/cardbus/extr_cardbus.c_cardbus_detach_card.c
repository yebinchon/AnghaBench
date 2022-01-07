
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int POWER_DISABLE_SOCKET (int ,int ) ;
 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
cardbus_detach_card(device_t cbdev)
{
 int err = 0;

 err = bus_generic_detach(cbdev);
 if (err)
  return (err);
 err = device_delete_children(cbdev);
 if (err)
  return (err);

 POWER_DISABLE_SOCKET(device_get_parent(cbdev), cbdev);
 return (err);
}

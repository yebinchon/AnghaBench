
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
cardbus_probe(device_t cbdev)
{
 device_set_desc(cbdev, "CardBus bus");
 return (0);
}

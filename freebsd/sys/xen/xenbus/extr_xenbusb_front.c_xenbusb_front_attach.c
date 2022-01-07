
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int xenbusb_attach (int ,char*,int) ;

__attribute__((used)) static int
xenbusb_front_attach(device_t dev)
{
 return (xenbusb_attach(dev, "device", 1));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_add_child (int ,char*,int) ;
 int device_probe_and_attach (int ) ;

__attribute__((used)) static int
lpbb_attach(device_t dev)
{
 device_t bitbang;


 bitbang = device_add_child(dev, "iicbb", -1);
 device_probe_and_attach(bitbang);

 return (0);
}

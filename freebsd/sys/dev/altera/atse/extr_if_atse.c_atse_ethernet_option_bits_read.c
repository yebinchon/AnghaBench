
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int atse_ethernet_option_bits_read_fdt (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
atse_ethernet_option_bits_read(device_t dev)
{
 int error;

 error = atse_ethernet_option_bits_read_fdt(dev);
 if (error == 0)
  return (0);

 device_printf(dev, "Cannot read Ethernet addresses from flash.\n");

 return (error);
}

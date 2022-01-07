
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int RCC_GPIO_BASE ;
 int device_set_desc (int ,char*) ;
 scalar_t__ isa_get_logicalid (int ) ;
 int isa_get_port (int ) ;
 char* kern_getenv (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
rcc_gpio_probe(device_t dev)
{
 char *prod;
 int port;




 if (isa_get_logicalid(dev) != 0)
  return (ENXIO);




 port = isa_get_port(dev);
 if (port != RCC_GPIO_BASE)
  return (ENXIO);

 prod = kern_getenv("smbios.system.product");
 if (prod == ((void*)0) ||
     (strcmp(prod, "RCC-VE") != 0 && strcmp(prod, "RCC-DFF") != 0))
  return (ENXIO);

 device_set_desc(dev, "RCC-VE/DFF GPIO controller");

 return (BUS_PROBE_DEFAULT);
}

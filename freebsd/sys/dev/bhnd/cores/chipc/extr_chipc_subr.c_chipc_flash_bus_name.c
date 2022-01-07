
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chipc_flash ;
const char *
chipc_flash_bus_name(chipc_flash type)
{
 switch (type) {
 case 132:
  return ("cfi");

 case 128:
 case 129:
  return ("spi");

 case 130:
 case 131:

  return (((void*)0));

 case 134:
 case 133:

  return (((void*)0));

 case 135:
 default:
  return (((void*)0));
 }
}

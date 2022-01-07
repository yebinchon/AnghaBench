
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chipc_flash ;
const char *
chipc_sflash_device_name(chipc_flash type)
{
 switch (type) {
 case 128:
  return ("mx25l");

 case 129:
  return ("at45d");

 case 130:
 case 131:

  return (((void*)0));

 case 132:
 case 134:
 case 133:
 case 135:
 default:
  return (((void*)0));
 }
}

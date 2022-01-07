
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_port_type ;






const char *
bhnd_port_type_name(bhnd_port_type port_type)
{
 switch (port_type) {
 case 128:
  return ("device");
 case 129:
  return ("bridge");
 case 130:
  return ("agent");
 default:
  return "unknown";
 }
}

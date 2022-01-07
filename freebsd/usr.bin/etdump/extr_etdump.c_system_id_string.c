
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;







const char *
system_id_string(u_char system_id)
{

 switch (system_id) {
 case 128:
  return ("i386");
 case 129:
  return ("powerpc");
 case 130:
  return ("mac");
 case 131:
  return ("efi");
 default:
  return ("invalid");
 }
}

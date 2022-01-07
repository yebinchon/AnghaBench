
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int u_char ;


 size_t MAX_OCTSTRING_LEN ;
 int isprint (char) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *
snmp_oct2str(uint32_t len, char *octets, char *buf)
{
 uint8_t binary = 0;
 uint32_t i;
 char *ptr;

 if (len > MAX_OCTSTRING_LEN || octets == ((void*)0) || buf == ((void*)0))
  return (((void*)0));

 for (ptr = buf, i = 0; i < len; i++)
  if (!isprint(octets[i])) {
   binary = 1;
   buf += sprintf(buf, "0x");
   break;
  }

 for (ptr = buf, i = 0; i < len; i++)
  if (!binary)
   ptr += sprintf(ptr, "%c", octets[i]);
  else
   ptr += sprintf(ptr, "%2.2x", (u_char)octets[i]);

 return (buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static char *
snmp_oct2bits(uint32_t len, char *octets, char *buf)
{
 int i, bits;
 uint64_t value;

 if (len > sizeof(value) || octets == ((void*)0) || buf == ((void*)0))
  return (((void*)0));

 for (i = len, value = 0, bits = 0; i > 0; i--, bits += 8)
  value += octets[i] << bits;

 buf[0]= '\0';
 sprintf(buf, "0x%llx.",(long long unsigned) value);

 return (buf);
}

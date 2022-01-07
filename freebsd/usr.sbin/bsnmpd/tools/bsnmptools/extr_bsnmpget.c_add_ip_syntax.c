
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ipaddress; } ;
struct snmp_value {TYPE_1__ v; int syntax; } ;
typedef int int8_t ;
typedef int int32_t ;


 int SNMP_SYNTAX_IPADDRESS ;

__attribute__((used)) static int32_t
add_ip_syntax(struct snmp_value *dst, struct snmp_value *src)
{
 int8_t i;

 dst->syntax = SNMP_SYNTAX_IPADDRESS;
 for (i = 0; i < 4; i++)
  dst->v.ipaddress[i] = src->v.ipaddress[i];

 return (1);
}

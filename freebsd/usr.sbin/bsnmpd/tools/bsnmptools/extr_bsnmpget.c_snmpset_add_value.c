
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int counter64; int uint32; int integer; } ;
struct snmp_value {int syntax; TYPE_1__ v; } ;
typedef int int32_t ;
 int add_ip_syntax (struct snmp_value*,struct snmp_value*) ;
 int add_octstring_syntax (struct snmp_value*,struct snmp_value*) ;
 int add_oid_syntax (struct snmp_value*,struct snmp_value*) ;
 int warnx (char*,int) ;

__attribute__((used)) static int32_t
snmpset_add_value(struct snmp_value *dst, struct snmp_value *src)
{
 if (dst == ((void*)0) || src == ((void*)0))
  return (-1);

 switch (src->syntax) {
  case 132:
   dst->v.integer = src->v.integer;
   dst->syntax = 132;
   break;
  case 128:
   dst->v.uint32 = src->v.uint32;
   dst->syntax = 128;
   break;
  case 133:
   dst->v.uint32 = src->v.uint32;
   dst->syntax = 133;
   break;
  case 135:
   dst->v.uint32 = src->v.uint32;
   dst->syntax = 135;
   break;
  case 134:
   dst->v.counter64 = src->v.counter64;
   dst->syntax = 134;
   break;
  case 131:
   add_ip_syntax(dst, src);
   break;
  case 130:
   add_octstring_syntax(dst, src);
   break;
  case 129:
   add_oid_syntax(dst, src);
   break;
  default:
   warnx("Unknown syntax %d", src->syntax);
   return (-1);
 }

 return (0);
}

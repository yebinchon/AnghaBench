
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_value {int dummy; } ;
typedef int int32_t ;
typedef enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
struct TYPE_2__ {int (* tc2oct ) (struct snmp_value*,char*) ;} ;


 int SNMP_UNKNOWN ;
 int stub1 (struct snmp_value*,char*) ;
 TYPE_1__* text_convs ;

int32_t
snmp_tc2oct(enum snmp_tc tc, struct snmp_value *value, char *string)
{
 if (tc > SNMP_UNKNOWN)
  tc = SNMP_UNKNOWN;

 return (text_convs[tc].tc2oct(value, string));
}

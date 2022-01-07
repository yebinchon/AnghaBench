
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asn_oid {int dummy; } ;
typedef enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
struct TYPE_2__ {char* (* tc2oid ) (char*,struct asn_oid*) ;} ;


 int SNMP_UNKNOWN ;
 char* stub1 (char*,struct asn_oid*) ;
 TYPE_1__* text_convs ;

char *
snmp_tc2oid(enum snmp_tc tc, char *str, struct asn_oid *oid)
{
 if (tc > SNMP_UNKNOWN)
  tc = SNMP_UNKNOWN;

 return (text_convs[tc].tc2oid(str, oid));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;
struct TYPE_2__ {int version; } ;


 int SET_LOCALKEY (struct snmp_toolinfo*) ;
 int SNMP_V3 ;
 TYPE_1__ snmp_client ;

int32_t
parse_local_key(struct snmp_toolinfo *snmptoolctx)
{
 SET_LOCALKEY(snmptoolctx);
 snmp_client.version = SNMP_V3;
 return (1);
}

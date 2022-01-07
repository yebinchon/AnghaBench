
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;


 int SET_RETRY (struct snmp_toolinfo*) ;

int32_t
parse_errors(struct snmp_toolinfo *snmptoolctx)
{
 SET_RETRY(snmptoolctx);
 return (1);
}

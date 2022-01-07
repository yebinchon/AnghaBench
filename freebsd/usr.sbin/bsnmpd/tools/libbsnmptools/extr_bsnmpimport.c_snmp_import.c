
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;


 int gettoken (struct snmp_toolinfo*) ;
 int snmp_import_top (struct snmp_toolinfo*,int*) ;

__attribute__((used)) static int32_t
snmp_import(struct snmp_toolinfo *snmptoolctx)
{
 int i;
 int32_t tok;

 tok = gettoken(snmptoolctx);

 do
  i = snmp_import_top(snmptoolctx, &tok);
 while (i > 0);

 return (i);
}

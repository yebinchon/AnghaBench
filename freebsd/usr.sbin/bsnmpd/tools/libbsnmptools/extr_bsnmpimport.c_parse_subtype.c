
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;
typedef enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;


 int TOK_STR ;
 int gettoken (struct snmp_toolinfo*) ;
 int nexttok ;
 int snmp_get_tc (int ) ;
 int warnx (char*) ;

__attribute__((used)) static int32_t
parse_subtype(struct snmp_toolinfo *snmptoolctx, int32_t *tok,
    enum snmp_tc *tc)
{
 if ((*tok = gettoken(snmptoolctx)) != TOK_STR) {
  warnx("subtype expected after '|'");
  return (-1);
 }

 *tc = snmp_get_tc(nexttok);
 *tok = gettoken(snmptoolctx);

 return (1);
}

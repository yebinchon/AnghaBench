
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
struct enum_pairs {int dummy; } ;
typedef int int32_t ;


 int TOK_NUM ;
 int TOK_STR ;
 scalar_t__ enum_pair_insert (struct enum_pairs*,int ,int ) ;
 int gettoken (struct snmp_toolinfo*) ;
 int nexttok ;
 int val ;
 int warnx (char*) ;

__attribute__((used)) static int32_t
parse_enum(struct snmp_toolinfo *snmptoolctx, int32_t *tok,
    struct enum_pairs *enums)
{
 while ((*tok = gettoken(snmptoolctx)) == TOK_STR) {
  if (enum_pair_insert(enums, val, nexttok) < 0)
   return (-1);
  if ((*tok = gettoken(snmptoolctx)) != TOK_NUM)
   break;
 }

 if (*tok != ')') {
  warnx("')' at end of enums");
  return (-1);
 }

 return (1);
}

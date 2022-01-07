
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;
typedef enum tok { ____Placeholder_tok } tok ;
struct TYPE_2__ {int lno; } ;


 scalar_t__ ASN_MAXID ;
 int TOK_NUM ;
 scalar_t__ TOK_STR ;
 scalar_t__ gettoken (struct snmp_toolinfo*) ;
 TYPE_1__* input ;
 scalar_t__ val ;
 int warnx (char*,int ) ;

__attribute__((used)) static int32_t
snmp_import_head(struct snmp_toolinfo *snmptoolctx)
{
 enum tok tok;

 if ((tok = gettoken(snmptoolctx)) == '(')
  tok = gettoken(snmptoolctx);

 if (tok != TOK_NUM || val > ASN_MAXID ) {
  warnx("Suboid expected - line %d", input->lno);
  return (-1);
 }

 if (gettoken(snmptoolctx) != TOK_STR) {
  warnx("Node name expected at line %d", input->lno);
  return (-1);
 }

 return (1);
}

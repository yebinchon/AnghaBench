
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct snmp_toolinfo {int dummy; } ;
struct snmp_oid2str {int syntax; struct snmp_oid2str* string; int table_idx; int access; int snmp_enum; int tc; } ;
typedef int int32_t ;
struct TYPE_2__ {struct snmp_oid2str* lno; } ;


 int ENTRY_DATA ;
 int ENTRY_NONE ;
 int SNMP_ACCESS_GETSET ;
 int TOK_ACCESS ;
 int TOK_STR ;
 int free (struct snmp_oid2str*) ;
 int gettoken (struct snmp_toolinfo*) ;
 TYPE_1__* input ;
 int parse_type (struct snmp_toolinfo*,int*,int *,int *) ;
 int snmp_import_update_table (int ,int *) ;
 int snmp_leaf_insert (struct snmp_toolinfo*,struct snmp_oid2str*) ;
 scalar_t__ val ;
 int warnx (char*,struct snmp_oid2str*) ;

__attribute__((used)) static int32_t
snmp_import_leaf(struct snmp_toolinfo *snmptoolctx, int32_t *tok,
    struct snmp_oid2str *oid2str)
{
 int32_t i, syntax;

 if ((syntax = parse_type(snmptoolctx, tok, &(oid2str->tc), &(oid2str->snmp_enum)))
     < 0)
  return(-1);

 oid2str->syntax = syntax;




 if (*tok == TOK_STR)
  *tok = gettoken(snmptoolctx);

 for (i = 0; i < SNMP_ACCESS_GETSET && *tok == TOK_ACCESS; i++) {
  oid2str->access |= (uint32_t) val;
  *tok = gettoken(snmptoolctx);
 }

 if (*tok != ')') {
  warnx("')' expected at end of line %d", input->lno);
  return (-1);
 }

 oid2str->table_idx = snmp_import_update_table(ENTRY_DATA, ((void*)0));

 if ((i = snmp_leaf_insert(snmptoolctx, oid2str)) < 0) {
  warnx("Error adding leaf %s to list", oid2str->string);
  return (-1);
 }





 if (i == 0) {
  free(oid2str->string);
  free(oid2str);
 }

 (void) snmp_import_update_table(ENTRY_NONE, ((void*)0));

 return (1);
}

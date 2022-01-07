
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;


 int ENTRY_NONE ;
 int TOK_EOF ;

 int current_oid ;
 int gettoken (struct snmp_toolinfo*) ;
 int snmp_import_object (struct snmp_toolinfo*) ;
 int snmp_import_update_table (int ,int *) ;
 int snmp_suboid_pop (int *) ;

__attribute__((used)) static int32_t
snmp_import_tree(struct snmp_toolinfo *snmptoolctx, int32_t *tok)
{
 while (*tok != TOK_EOF) {
  switch (*tok) {
      case 128:
   return (-1);
      case '(':
   if (snmp_import_object(snmptoolctx) < 0)
       return (-1);
   break;
      case ')':
   if (snmp_suboid_pop(&current_oid) < 0)
       return (-1);
   (void) snmp_import_update_table(ENTRY_NONE, ((void*)0));
   break;
      default:

   return (-1);
  }
  *tok = gettoken(snmptoolctx);
 }

 return (0);
}

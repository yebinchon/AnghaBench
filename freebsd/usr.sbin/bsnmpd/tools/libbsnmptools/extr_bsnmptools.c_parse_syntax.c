
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t int32_t ;
typedef enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;
struct TYPE_2__ {int stx; int str; } ;


 int SNMP_SYNTAX_NULL ;
 size_t SNMP_SYNTAX_UNKNOWN ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char*,int ) ;
 TYPE_1__* syntax_strings ;

enum snmp_syntax
parse_syntax(char *str)
{
 int32_t i;

 for (i = 0; i < SNMP_SYNTAX_UNKNOWN; i++) {
  if (strncmp(syntax_strings[i].str, str,
      strlen(syntax_strings[i].str)) == 0)
   return (syntax_strings[i].stx);
 }

 return (SNMP_SYNTAX_NULL);
}

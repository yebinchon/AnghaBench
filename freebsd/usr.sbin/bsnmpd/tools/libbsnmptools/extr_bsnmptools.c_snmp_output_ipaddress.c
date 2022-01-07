
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct snmp_toolinfo {int dummy; } ;
struct TYPE_2__ {char* str; } ;


 scalar_t__ GET_OUTPUT (struct snmp_toolinfo*) ;
 scalar_t__ OUTPUT_VERBOSE ;
 size_t SNMP_SYNTAX_IPADDRESS ;
 int fprintf (int ,char*,...) ;
 int stdout ;
 TYPE_1__* syntax_strings ;

__attribute__((used)) static void
snmp_output_ipaddress(struct snmp_toolinfo *snmptoolctx, uint8_t *ip)
{
 if (GET_OUTPUT(snmptoolctx) == OUTPUT_VERBOSE)
  fprintf(stdout, "%s : ",
      syntax_strings[SNMP_SYNTAX_IPADDRESS].str);

 fprintf(stdout, "%u.%u.%u.%u", ip[0], ip[1], ip[2], ip[3]);
}

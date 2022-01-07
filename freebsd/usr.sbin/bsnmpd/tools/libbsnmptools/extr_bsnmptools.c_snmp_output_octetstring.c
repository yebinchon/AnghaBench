
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct snmp_toolinfo {int dummy; } ;
typedef enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
struct TYPE_2__ {char* str; } ;


 scalar_t__ GET_OUTPUT (struct snmp_toolinfo*) ;
 scalar_t__ OUTPUT_VERBOSE ;
 size_t SNMP_SYNTAX_OCTETSTRING ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* snmp_oct2tc (int,scalar_t__,char*) ;
 int stdout ;
 TYPE_1__* syntax_strings ;

__attribute__((used)) static void
snmp_output_octetstring(struct snmp_toolinfo *snmptoolctx, enum snmp_tc tc,
    uint32_t len, uint8_t *octets)
{
 char *buf;

 if (len == 0 || octets == ((void*)0))
  return;

 if (GET_OUTPUT(snmptoolctx) == OUTPUT_VERBOSE)
  fprintf(stdout, "%s : ",
      syntax_strings[SNMP_SYNTAX_OCTETSTRING].str);

 if ((buf = snmp_oct2tc(tc, len, (char *) octets)) != ((void*)0)) {
  fprintf(stdout, "%s", buf);
  free(buf);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int octets; int len; } ;
struct TYPE_4__ {int counter64; int uint32; int ipaddress; int oid; TYPE_1__ octetstring; int integer; } ;
struct snmp_value {int syntax; TYPE_2__ v; } ;
struct snmp_toolinfo {int dummy; } ;
struct snmp_oid2str {int tc; int * snmp_enum; } ;
typedef int int32_t ;


 scalar_t__ GET_OUTPUT (struct snmp_toolinfo*) ;
 scalar_t__ OUTPUT_QUIET ;
 int SNMP_STRING ;
 int fprintf (int ,char*) ;
 int snmp_output_counter (struct snmp_toolinfo*,int ) ;
 int snmp_output_counter64 (struct snmp_toolinfo*,int ) ;
 int snmp_output_gauge (struct snmp_toolinfo*,int ) ;
 int snmp_output_int (struct snmp_toolinfo*,int *,int ) ;
 int snmp_output_ipaddress (struct snmp_toolinfo*,int ) ;
 int snmp_output_octetstring (struct snmp_toolinfo*,int ,int ,int ) ;
 int snmp_output_oid_value (struct snmp_toolinfo*,int *) ;
 int snmp_output_ticks (struct snmp_toolinfo*,int ) ;
 int stdout ;

int32_t
snmp_output_numval(struct snmp_toolinfo *snmptoolctx, struct snmp_value *val,
    struct snmp_oid2str *entry)
{
 if (val == ((void*)0))
  return (-1);

 if (GET_OUTPUT(snmptoolctx) != OUTPUT_QUIET)
  fprintf(stdout, " = ");

 switch (val->syntax) {
     case 135:
  if (entry != ((void*)0))
   snmp_output_int(snmptoolctx, entry->snmp_enum,
       val->v.integer);
  else
   snmp_output_int(snmptoolctx, ((void*)0), val->v.integer);
  break;

     case 130:
  if (entry != ((void*)0))
   snmp_output_octetstring(snmptoolctx, entry->tc,
       val->v.octetstring.len, val->v.octetstring.octets);
  else
   snmp_output_octetstring(snmptoolctx, SNMP_STRING,
       val->v.octetstring.len, val->v.octetstring.octets);
  break;

     case 129:
  snmp_output_oid_value(snmptoolctx, &(val->v.oid));
  break;

     case 134:
  snmp_output_ipaddress(snmptoolctx, val->v.ipaddress);
  break;

     case 139:
  snmp_output_counter(snmptoolctx, val->v.uint32);
  break;

     case 136:
  snmp_output_gauge(snmptoolctx, val->v.uint32);
  break;

     case 128:
  snmp_output_ticks(snmptoolctx, val->v.uint32);
  break;

     case 138:
  snmp_output_counter64(snmptoolctx, val->v.counter64);
  break;

     case 132:
  fprintf(stdout, "No Such Object\n");
  return (val->syntax);

     case 133:
  fprintf(stdout, "No Such Instance\n");
  return (val->syntax);

     case 137:
  fprintf(stdout, "End of Mib View\n");
  return (val->syntax);

     case 131:

  fprintf(stdout, "agent returned NULL Syntax\n");
  return (val->syntax);

     default:

  fprintf(stdout, "agent returned unknown syntax\n");
  return (-1);
 }

 fprintf(stdout, "\n");

 return (0);
}

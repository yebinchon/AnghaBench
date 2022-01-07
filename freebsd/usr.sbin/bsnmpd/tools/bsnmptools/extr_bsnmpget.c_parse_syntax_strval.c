
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct snmp_toolinfo {int dummy; } ;
struct TYPE_10__ {int syntax; } ;
struct snmp_object {TYPE_2__ val; TYPE_1__* info; } ;
typedef int int32_t ;
typedef enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;
struct TYPE_9__ {int tc; } ;


 scalar_t__ GET_OUTPUT (struct snmp_toolinfo*) ;
 int ISSET_ERRIGNORE (struct snmp_toolinfo*) ;
 scalar_t__ OUTPUT_VERBOSE ;





 int SNMP_SYNTAX_NULL ;



 int parse_counter (TYPE_2__*,char*) ;
 int parse_gauge (TYPE_2__*,char*) ;
 int parse_int_string (struct snmp_object*,char*) ;
 int parse_ip (TYPE_2__*,char*) ;
 int parse_oid_string (struct snmp_toolinfo*,TYPE_2__*,char*) ;
 int parse_syntax (char*) ;
 int parse_ticks (TYPE_2__*,char*) ;
 int parse_uint64 (TYPE_2__*,char*) ;
 int snmp_tc2oct (int ,TYPE_2__*,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int32_t
parse_syntax_strval(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *object, char *str)
{
 uint32_t len;
 enum snmp_syntax syn;





 if (GET_OUTPUT(snmptoolctx) == OUTPUT_VERBOSE) {
  for (len = 0 ; *(str + len) != ':'; len++) {
   if (*(str + len) == '\0') {
    warnx("Syntax missing in value - %s", str);
    return (-1);
   }
  }
  if ((syn = parse_syntax(str)) <= SNMP_SYNTAX_NULL) {
   warnx("Unknown syntax in - %s", str);
   return (-1);
  }
  if (syn != object->val.syntax) {
   if (!ISSET_ERRIGNORE(snmptoolctx)) {
    warnx("Bad syntax in - %s", str);
    return (-1);
   } else
    object->val.syntax = syn;
  }
  len++;
 } else
  len = 0;

 switch (object->val.syntax) {
  case 132:
   return (parse_int_string(object, str + len));
  case 131:
   return (parse_ip(&(object->val), str + len));
  case 135:
   return (parse_counter(&(object->val), str + len));
  case 133:
   return (parse_gauge(&(object->val), str + len));
  case 128:
   return (parse_ticks(&(object->val), str + len));
  case 134:
   return (parse_uint64(&(object->val), str + len));
  case 130:
   return (snmp_tc2oct(object->info->tc, &(object->val),
       str + len));
  case 129:
   return (parse_oid_string(snmptoolctx, &(object->val),
       str + len));
  default:

   break;
 }

 return (-1);
}

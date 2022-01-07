
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int integer; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct snmp_object {TYPE_3__ val; TYPE_1__* info; } ;
typedef int int32_t ;
struct TYPE_4__ {int snmp_enum; } ;


 int enum_number_lookup (int ,char*) ;
 scalar_t__ isdigit (char) ;
 int parse_int (TYPE_3__*,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int32_t
parse_int_string(struct snmp_object *object, char *val)
{
 int32_t v;

 if (isdigit(val[0]))
  return ((parse_int(&(object->val), val)));

 if (object->info == ((void*)0)) {
  warnx("Unknown enumerated integer type - %s", val);
  return (-1);
 }
 if ((v = enum_number_lookup(object->info->snmp_enum, val)) < 0)
  warnx("Unknown enumerated integer type - %s", val);

 object->val.v.integer = v;
 return (1);
}

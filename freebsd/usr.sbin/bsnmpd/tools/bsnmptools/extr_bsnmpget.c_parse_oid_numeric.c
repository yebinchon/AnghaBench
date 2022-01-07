
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct snmp_value {int syntax; TYPE_1__ v; } ;
typedef int int32_t ;
typedef scalar_t__ asn_subid_t ;


 scalar_t__ ASN_MAXID ;
 int SNMP_SYNTAX_OID ;
 scalar_t__ errno ;
 scalar_t__ snmp_suboid_append (int *,scalar_t__) ;
 scalar_t__ strtoul (char*,char**,int) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int32_t
parse_oid_numeric(struct snmp_value *value, char *val)
{
 char *endptr;
 int32_t saved_errno;
 asn_subid_t suboid;

 do {
  saved_errno = errno;
  errno = 0;
  suboid = strtoul(val, &endptr, 10);
  if (errno != 0) {
   warn("Value %s not supported", val);
   errno = saved_errno;
   return (-1);
  }
  errno = saved_errno;
  if ((asn_subid_t) suboid > ASN_MAXID) {
   warnx("Suboid %u > ASN_MAXID", suboid);
   return (-1);
  }
  if (snmp_suboid_append(&(value->v.oid), suboid) < 0)
   return (-1);
  val = endptr + 1;
 } while (*endptr == '.');

 if (*endptr != '\0')
  warnx("OID value %s not supported", val);

 value->syntax = SNMP_SYNTAX_OID;
 return (0);
}

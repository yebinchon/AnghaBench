
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int len; int * octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {int syntax; TYPE_2__ v; } ;
typedef int int32_t ;


 int LOG_ERR ;
 int SNMP_BRIDGEID_OCTETS ;
 int SNMP_MAX_BRIDGE_PRIORITY ;
 int SNMP_SYNTAX_OCTETSTRING ;
 scalar_t__ errno ;
 int * malloc (int) ;
 int memcpy (int *,int*,int) ;
 int strerror (scalar_t__) ;
 int strtoul (char*,char**,int) ;
 int syslog (int ,char*,int ) ;
 int warnx (char*,...) ;

__attribute__((used)) static int32_t
parse_bridge_id(struct snmp_value *sv, char *string)
{
 char *endptr;
 int32_t i, saved_errno;
 uint32_t v;
 uint8_t bridge_id[SNMP_BRIDGEID_OCTETS];


 saved_errno = errno;
 errno = 0;
 v = strtoul(string, &endptr, 10);

 if (v > SNMP_MAX_BRIDGE_PRIORITY || errno != 0 || *endptr != '.') {
  errno = saved_errno;
  warnx("Bad bridge priority value %d", v);
  return (-1);
 }

 bridge_id[0] = (v & 0xff00);
 bridge_id[1] = (v & 0xff);

 string = endptr + 1;

 for (i = 0; i < 5; i++) {
  v = strtoul(string, &endptr, 16);
  if (v > 0xff) {
   warnx("Integer value %s not supported", string);
   return (-1);
  }
  if(*endptr != ':') {
   warnx("Failed reading octet - %s", string);
   return (-1);
  }
  bridge_id[i + 2] = v;
  string = endptr + 1;
 }


 v = strtoul(string, &endptr, 16);
 if (v > 0xff) {
  warnx("Integer value %s not supported", string);
  return (-1);
 }
 bridge_id[7] = v;

 if ((sv->v.octetstring.octets = malloc(SNMP_BRIDGEID_OCTETS)) == ((void*)0)) {
  syslog(LOG_ERR, "malloc failed: %s", strerror(errno));
  return (-1);
 }

 sv->v.octetstring.len = SNMP_BRIDGEID_OCTETS;
 memcpy(sv->v.octetstring.octets, bridge_id, SNMP_BRIDGEID_OCTETS);
 sv->syntax = SNMP_SYNTAX_OCTETSTRING;
 return (1);
}


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
 int SNMP_BPORT_OCTETS ;
 int SNMP_MAX_BPORT_PRIORITY ;
 int SNMP_SYNTAX_OCTETSTRING ;
 int errno ;
 int * malloc (int) ;
 int memcpy (int *,int*,int) ;
 int strerror (int) ;
 int strtoul (char*,char**,int) ;
 int syslog (int ,char*,int ) ;
 int warnx (char*,int) ;

__attribute__((used)) static int32_t
parse_bport_id(struct snmp_value *value, char *string)
{
 char *endptr;
 int saved_errno;
 uint32_t v;
 uint8_t bport_id[SNMP_BPORT_OCTETS];


 saved_errno = errno;
 errno = 0;
 v = strtoul(string, &endptr, 10);

 if (v > SNMP_MAX_BPORT_PRIORITY || errno != 0 || *endptr != '.') {
  errno = saved_errno;
  warnx("Bad bridge port priority value %d", v);
  return (-1);
 }

 bport_id[0] = v;

 string = endptr + 1;
 v = strtoul(string, &endptr, 16);
 if (v > 0xff) {
  warnx("Bad port number - %d", v);
  return (-1);
 }

 bport_id[1] = v;

 if ((value->v.octetstring.octets = malloc(SNMP_BPORT_OCTETS)) == ((void*)0)) {
  syslog(LOG_ERR, "malloc failed: %s", strerror(errno));
  return (-1);
 }

 value->v.octetstring.len = SNMP_BPORT_OCTETS;
 memcpy(value->v.octetstring.octets, bport_id, SNMP_BPORT_OCTETS);
 value->syntax = SNMP_SYNTAX_OCTETSTRING;
 return (1);
}

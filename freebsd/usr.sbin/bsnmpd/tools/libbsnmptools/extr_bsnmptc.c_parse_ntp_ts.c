
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
 int SNMP_NTP_TS_OCTETS ;
 int SNMP_SYNTAX_OCTETSTRING ;
 scalar_t__ errno ;
 int * malloc (int) ;
 int memcpy (int *,int*,int) ;
 int strerror (scalar_t__) ;
 int strtoul (char*,char**,int) ;
 int syslog (int ,char*,int ) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int32_t
parse_ntp_ts(struct snmp_value *sv, char *val)
{
 char *endptr;
 int32_t i, d, saved_errno;
 uint32_t v;
 uint8_t ntp_ts[SNMP_NTP_TS_OCTETS];

 saved_errno = errno;
 errno = 0;
 v = strtoul(val, &endptr, 10);
 if (errno != 0 || (v / 1000) > 9) {
  errno = saved_errno;
  warnx("Integer value %s not supported", val);
  return (-1);
 } else
  errno = saved_errno;

 if (*endptr != '.') {
  warnx("Failed reading octet - %s", val);
  return (-1);
 }

 for (i = 0, d = 1000; i < 4; i++) {
  ntp_ts[i] = v / d;
  v = v % d;
  d = d / 10;
 }
 val = endptr + 1;

 saved_errno = errno;
 errno = 0;
 v = strtoul(val, &endptr, 10);
 if (errno != 0 || (v / 1000) > 9) {
  errno = saved_errno;
  warnx("Integer value %s not supported", val);
  return (-1);
 } else
  errno = saved_errno;

 for (i = 0, d = 1000; i < 4; i++) {
  ntp_ts[i + 4] = v / d;
  v = v % d;
  d = d / 10;
 }

 if ((sv->v.octetstring.octets = malloc(SNMP_NTP_TS_OCTETS)) == ((void*)0)) {
  syslog(LOG_ERR, "malloc failed: %s", strerror(errno));
  return (-1);
 }

 sv->v.octetstring.len = SNMP_NTP_TS_OCTETS;
 memcpy(sv->v.octetstring.octets, ntp_ts, SNMP_NTP_TS_OCTETS);
 sv->syntax = SNMP_SYNTAX_OCTETSTRING;
 return (1);
}

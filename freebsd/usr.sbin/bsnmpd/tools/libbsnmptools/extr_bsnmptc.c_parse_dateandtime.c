
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


 int SNMP_DATETIME_OCTETS ;
 int SNMP_SYNTAX_OCTETSTRING ;
 int * malloc (int) ;
 int memcpy (int *,int*,int) ;
 int strtoul (char*,char**,int) ;
 int warn (char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int32_t
parse_dateandtime(struct snmp_value *sv, char *val)
{
 char *endptr;
 uint32_t v;
 uint8_t date[SNMP_DATETIME_OCTETS];


 v = strtoul(val, &endptr, 10);
 if (v > 0xffff || *endptr != '-')
  goto error;
 date[0] = ((v & 0xff00) >> 8);
 date[1] = (v & 0xff);
 val = endptr + 1;


 v = strtoul(val, &endptr, 10);
 if (v == 0 || v > 12 || *endptr != '-')
  goto error;
 date[2] = v;
 val = endptr + 1;


 v = strtoul(val, &endptr, 10);
 if (v == 0 || v > 31 || *endptr != ',')
  goto error;
 date[3] = v;
 val = endptr + 1;


 v = strtoul(val, &endptr, 10);
 if (v > 23 || *endptr != ':')
  goto error;
 date[4] = v;
 val = endptr + 1;


 v = strtoul(val, &endptr, 10);
 if (v > 59 || *endptr != ':')
  goto error;
 date[5] = v;
 val = endptr + 1;


 v = strtoul(val, &endptr, 10);
 if (v > 60 || *endptr != '.')
  goto error;
 date[6] = v;
 val = endptr + 1;


 v = strtoul(val, &endptr, 10);
 if (v > 9 || *endptr != ',')
  goto error;
 date[7] = v;
 val = endptr + 1;


 if (*val != '-' && *val != '+')
  goto error;
 date[8] = (uint8_t) *val;
 val = endptr + 1;


 v = strtoul(val, &endptr, 10);
 if (v > 13 || *endptr != ':')
  goto error;
 date[9] = v;
 val = endptr + 1;


 v = strtoul(val, &endptr, 10);
 if (v > 59 || *endptr != '\0')
  goto error;
 date[10] = v;

 if ((sv->v.octetstring.octets = malloc(SNMP_DATETIME_OCTETS)) == ((void*)0)) {
  warn("malloc() failed");
  return (-1);
 }

 sv->v.octetstring.len = SNMP_DATETIME_OCTETS;
 memcpy(sv->v.octetstring.octets, date, SNMP_DATETIME_OCTETS);
 sv->syntax = SNMP_SYNTAX_OCTETSTRING;
 return (1);

  error:
 warnx("Date value %s not supported", val);
 return (-1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct asn_oid {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef int asn_subid_t ;
typedef int UTC ;


 scalar_t__ SNMP_DATETIME_OCTETS ;
 scalar_t__ errno ;
 scalar_t__ snmp_suboid_append (struct asn_oid*,int ) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 int strtoul (char*,char**,int) ;
 int warnx (char*,char*) ;

__attribute__((used)) static char *
snmp_date2asn_oid(char *str, struct asn_oid *oid)
{
 char *endptr, *ptr;
 static const char UTC[3] = "UTC";
 int32_t saved_errno;
 uint32_t v;

 if (snmp_suboid_append(oid, (asn_subid_t) SNMP_DATETIME_OCTETS) < 0)
  return (((void*)0));


 ptr = str;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (v > 0xffff)
  goto error;
 else
  errno = saved_errno;
 if (*endptr != '-')
  goto error1;
 if (snmp_suboid_append(oid, (asn_subid_t) ((v & 0xff00) >> 8)) < 0)
  return (((void*)0));
 if (snmp_suboid_append(oid, (asn_subid_t) (v & 0xff)) < 0)
  return (((void*)0));


 ptr = endptr + 1;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0)
  goto error;
 else
  errno = saved_errno;
 if (*endptr != '-')
  goto error1;
 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));


 ptr = endptr + 1;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0)
  goto error;
 else
  errno = saved_errno;
 if (*endptr != '-')
  goto error1;
 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));


 ptr = endptr + 1;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0)
  goto error;
 else
  errno = saved_errno;
 if (*endptr != ':')
  goto error1;
 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));


 ptr = endptr + 1;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0)
  goto error;
 else
  errno = saved_errno;
 if (*endptr != ':')
  goto error1;
 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));


 ptr = endptr + 1;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0)
  goto error;
 else
  errno = saved_errno;
 if (*endptr != '.')
  goto error1;
 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));


 ptr = endptr + 1;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0)
  goto error;
 else
  errno = saved_errno;
 if (*endptr != ',')
  goto error1;
 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));


 ptr = endptr + 1;
 if (strncmp(ptr, UTC, sizeof(UTC)) == 0)
  ptr += sizeof(UTC);


 if (*ptr == '-' || *ptr == '+') {
  if (snmp_suboid_append(oid, (asn_subid_t) (*ptr)) < 0)
   return (((void*)0));
 } else
  goto error1;


 ptr = endptr + 1;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0)
  goto error;
 else
  errno = saved_errno;
 if (*endptr != ':')
  goto error1;
 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));


 ptr = endptr + 1;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0)
  goto error;
 else
  errno = saved_errno;
 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));

 return (endptr);

  error:
 errno = saved_errno;
  error1:
 warnx("Date value %s not supported", str);
 return (((void*)0));
}

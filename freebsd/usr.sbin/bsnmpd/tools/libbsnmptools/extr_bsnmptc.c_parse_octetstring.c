
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int * octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {int syntax; TYPE_2__ v; } ;
typedef int int32_t ;


 int LOG_ERR ;
 size_t MAX_OCTSTRING_LEN ;
 int SNMP_SYNTAX_OCTETSTRING ;
 int errno ;
 int * malloc (size_t) ;
 int memcpy (int *,char*,size_t) ;
 int strerror (int ) ;
 size_t strlen (char*) ;
 int syslog (int ,char*,int ) ;
 int warnx (char*,size_t) ;

__attribute__((used)) static int32_t
parse_octetstring(struct snmp_value *value, char *val)
{
 size_t len;

 if ((len = strlen(val)) >= MAX_OCTSTRING_LEN) {
  warnx("Octetstring too long - %d is max allowed",
      MAX_OCTSTRING_LEN - 1);
  return (-1);
 }

 if ((value->v.octetstring.octets = malloc(len)) == ((void*)0)) {
  value->v.octetstring.len = 0;
  syslog(LOG_ERR, "malloc failed: %s", strerror(errno));
  return (-1);
 }

 value->v.octetstring.len = len;
 memcpy(value->v.octetstring.octets, val, len);
 value->syntax = SNMP_SYNTAX_OCTETSTRING;

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int * octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {TYPE_2__ v; int syntax; } ;
typedef int int32_t ;


 scalar_t__ ASN_MAXOCTETSTRING ;
 int LOG_ERR ;
 int SNMP_SYNTAX_OCTETSTRING ;
 int errno ;
 int * malloc (scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;
 int warnx (char*,scalar_t__) ;

__attribute__((used)) static int32_t
add_octstring_syntax(struct snmp_value *dst, struct snmp_value *src)
{
 if (src->v.octetstring.len > ASN_MAXOCTETSTRING) {
  warnx("OctetString len too big - %u", src->v.octetstring.len);
  return (-1);
 }

 if ((dst->v.octetstring.octets = malloc(src->v.octetstring.len)) ==
     ((void*)0)) {
  syslog(LOG_ERR, "malloc() failed - %s", strerror(errno));
  return (-1);
 }

 memcpy(dst->v.octetstring.octets, src->v.octetstring.octets,
     src->v.octetstring.len);
 dst->syntax = SNMP_SYNTAX_OCTETSTRING;
 dst->v.octetstring.len = src->v.octetstring.len;

 return(0);
}

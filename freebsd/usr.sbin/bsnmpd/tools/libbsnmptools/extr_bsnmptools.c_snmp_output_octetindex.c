
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ u_char ;
struct snmp_toolinfo {int dummy; } ;
struct asn_oid {size_t* subs; } ;
typedef enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;


 int LOG_ERR ;
 int errno ;
 int free (scalar_t__*) ;
 scalar_t__* malloc (size_t) ;
 int snmp_output_octetstring (struct snmp_toolinfo*,int,size_t,scalar_t__*) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static void
snmp_output_octetindex(struct snmp_toolinfo *snmptoolctx, enum snmp_tc tc,
    struct asn_oid *oid)
{
 uint32_t i;
 uint8_t *s;

 if ((s = malloc(oid->subs[0] + 1)) == ((void*)0))
  syslog(LOG_ERR, "malloc failed - %s", strerror(errno));
 else {
  for (i = 0; i < oid->subs[0]; i++)
   s[i] = (u_char) (oid->subs[i + 1]);

  snmp_output_octetstring(snmptoolctx, tc, oid->subs[0], s);
  free(s);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct snmp_toolinfo {int dummy; } ;
struct index {int syntax; int tc; int snmp_enum; } ;
struct asn_oid {scalar_t__ len; int * subs; } ;
typedef int int32_t ;


 int ASN_MAXOCTETSTRING ;
 int ASN_MAXOIDLEN ;
 int asn_append_oid (struct asn_oid*,struct asn_oid*) ;
 int asn_slice_oid (struct asn_oid*,struct asn_oid*,int,scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (struct asn_oid*,int ,int) ;
 int snmp_output_counter (struct snmp_toolinfo*,int ) ;
 int snmp_output_counter64 (struct snmp_toolinfo*,int ) ;
 int snmp_output_gauge (struct snmp_toolinfo*,int ) ;
 int snmp_output_int (struct snmp_toolinfo*,int ,int ) ;
 int snmp_output_ipaddress (struct snmp_toolinfo*,int *) ;
 int snmp_output_octetindex (struct snmp_toolinfo*,int ,struct asn_oid*) ;
 int snmp_output_oid_value (struct snmp_toolinfo*,struct asn_oid*) ;
 int snmp_output_ticks (struct snmp_toolinfo*,int ) ;

__attribute__((used)) static int32_t
snmp_output_index(struct snmp_toolinfo *snmptoolctx, struct index *stx,
    struct asn_oid *oid)
{
 uint8_t ip[4];
 uint32_t bytes = 1;
 uint64_t cnt64;
 struct asn_oid temp, out;

 if (oid->len < bytes)
  return (-1);

 memset(&temp, 0, sizeof(struct asn_oid));
 asn_append_oid(&temp, oid);

 switch (stx->syntax) {
     case 132:
  snmp_output_int(snmptoolctx, stx->snmp_enum, temp.subs[0]);
  break;

     case 130:
  if ((temp.subs[0] > temp.len -1 ) || (temp.subs[0] >
      ASN_MAXOCTETSTRING))
   return (-1);
  snmp_output_octetindex(snmptoolctx, stx->tc, &temp);
  bytes += temp.subs[0];
  break;

     case 129:
  if ((temp.subs[0] > temp.len -1) || (temp.subs[0] >
      ASN_MAXOIDLEN))
   return (-1);

  bytes += temp.subs[0];
  memset(&out, 0, sizeof(struct asn_oid));
  asn_slice_oid(&out, &temp, 1, bytes);
  snmp_output_oid_value(snmptoolctx, &out);
  break;

     case 131:
  if (temp.len < 4)
   return (-1);
  for (bytes = 0; bytes < 4; bytes++)
   ip[bytes] = temp.subs[bytes];

  snmp_output_ipaddress(snmptoolctx, ip);
  bytes = 4;
  break;

     case 135:
  snmp_output_counter(snmptoolctx, temp.subs[0]);
  break;

     case 133:
  snmp_output_gauge(snmptoolctx, temp.subs[0]);
  break;

     case 128:
  snmp_output_ticks(snmptoolctx, temp.subs[0]);
  break;

     case 134:
  if (oid->len < 2)
   return (-1);
  bytes = 2;
  memcpy(&cnt64, temp.subs, bytes);
  snmp_output_counter64(snmptoolctx, cnt64);
  break;

     default:
  return (-1);
 }

 return (bytes);
}

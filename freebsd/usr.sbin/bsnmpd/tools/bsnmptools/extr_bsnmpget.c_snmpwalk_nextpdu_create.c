
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct snmp_pdu {int nbindings; TYPE_1__* bindings; } ;
struct asn_oid {int dummy; } ;
struct TYPE_2__ {int var; } ;


 int asn_append_oid (int *,struct asn_oid*) ;
 int snmp_pdu_create (struct snmp_pdu*,int ) ;

__attribute__((used)) static void
snmpwalk_nextpdu_create(uint32_t op, struct asn_oid *var, struct snmp_pdu *pdu)
{
 snmp_pdu_create(pdu, op);
 asn_append_oid(&(pdu->bindings[0].var), var);
 pdu->nbindings = 1;
}

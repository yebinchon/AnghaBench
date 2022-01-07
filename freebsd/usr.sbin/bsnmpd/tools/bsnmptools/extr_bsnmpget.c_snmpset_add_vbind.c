
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snmp_pdu {size_t nbindings; TYPE_1__* bindings; } ;
struct TYPE_4__ {int var; } ;
struct snmp_object {scalar_t__ error; TYPE_2__ val; } ;
typedef int int32_t ;
struct TYPE_3__ {int var; } ;


 size_t SNMP_MAX_BINDINGS ;
 int asn_append_oid (int *,int *) ;
 scalar_t__ snmpset_add_value (TYPE_1__*,TYPE_2__*) ;
 int warnx (char*) ;

__attribute__((used)) static int32_t
snmpset_add_vbind(struct snmp_pdu *pdu, struct snmp_object *obj)
{
 if (pdu->nbindings > SNMP_MAX_BINDINGS) {
  warnx("Too many OIDs for one PDU");
  return (-1);
 }

 if (obj->error > 0)
  return (0);

 if (snmpset_add_value(&(pdu->bindings[pdu->nbindings]), &(obj->val))
     < 0)
  return (-1);

 asn_append_oid(&(pdu->bindings[pdu->nbindings].var), &(obj->val.var));
 pdu->nbindings++;

 return (pdu->nbindings);
}

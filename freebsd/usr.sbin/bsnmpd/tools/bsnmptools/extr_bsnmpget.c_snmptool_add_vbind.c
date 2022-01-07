
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snmp_pdu {size_t nbindings; TYPE_1__* bindings; } ;
struct TYPE_4__ {int var; } ;
struct snmp_object {scalar_t__ error; TYPE_2__ val; } ;
typedef size_t int32_t ;
struct TYPE_3__ {int var; } ;


 int asn_append_oid (int *,int *) ;

__attribute__((used)) static int32_t
snmptool_add_vbind(struct snmp_pdu *pdu, struct snmp_object *obj)
{
 if (obj->error > 0)
  return (0);

 asn_append_oid(&(pdu->bindings[pdu->nbindings].var), &(obj->val.var));
 pdu->nbindings++;

 return (pdu->nbindings);
}

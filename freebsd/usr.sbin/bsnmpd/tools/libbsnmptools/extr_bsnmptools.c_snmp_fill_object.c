
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_value {scalar_t__ syntax; int var; } ;
struct snmp_toolinfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ syntax; int var; } ;
struct snmp_object {TYPE_1__ val; } ;
typedef int int32_t ;
typedef int asn_subid_t ;


 int ASN_MAXID ;
 int asn_append_oid (int *,int *) ;
 int memset (struct snmp_object*,int ,int) ;
 int snmp_lookup_leafstring (struct snmp_toolinfo*,struct snmp_object*) ;
 int snmp_lookup_nonleaf_string (struct snmp_toolinfo*,struct snmp_object*) ;
 int snmp_suboid_append (int *,int ) ;
 int snmp_suboid_pop (int *) ;

__attribute__((used)) static int32_t
snmp_fill_object(struct snmp_toolinfo *snmptoolctx, struct snmp_object *obj,
    struct snmp_value *val)
{
 int32_t rc;
 asn_subid_t suboid;

 if (obj == ((void*)0) || val == ((void*)0))
  return (-1);

 if ((suboid = snmp_suboid_pop(&(val->var))) > ASN_MAXID)
  return (-1);

 memset(obj, 0, sizeof(struct snmp_object));
 asn_append_oid(&(obj->val.var), &(val->var));
 obj->val.syntax = val->syntax;

 if (obj->val.syntax > 0)
  rc = snmp_lookup_leafstring(snmptoolctx, obj);
 else
  rc = snmp_lookup_nonleaf_string(snmptoolctx, obj);

 (void) snmp_suboid_append(&(val->var), suboid);
 (void) snmp_suboid_append(&(obj->val.var), suboid);

 return (rc);
}

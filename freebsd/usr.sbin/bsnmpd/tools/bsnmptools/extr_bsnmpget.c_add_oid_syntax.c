
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct snmp_value {int syntax; TYPE_1__ v; } ;
typedef int int32_t ;


 int SNMP_SYNTAX_OID ;
 int asn_append_oid (int *,int *) ;

__attribute__((used)) static int32_t
add_oid_syntax(struct snmp_value *dst, struct snmp_value *src)
{
 asn_append_oid(&(dst->v.oid), &(src->v.oid));
 dst->syntax = SNMP_SYNTAX_OID;
 return (0);
}

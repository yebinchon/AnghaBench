
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gss_OID_set ;
typedef int gss_OID ;
struct TYPE_3__ {size_t count; int * elements; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ kgss_oid_equal (int const,int *) ;

OM_uint32
gss_test_oid_set_member(OM_uint32 *minor_status,
    const gss_OID member,
    const gss_OID_set set,
    int *present)
{
 size_t i;

 *present = 0;
 for (i = 0; i < set->count; i++)
  if (kgss_oid_equal(member, &set->elements[i]))
   *present = 1;

 *minor_status = 0;
 return (GSS_S_COMPLETE);
}

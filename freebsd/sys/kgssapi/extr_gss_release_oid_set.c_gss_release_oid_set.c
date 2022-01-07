
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gss_OID_set ;
struct TYPE_5__ {struct TYPE_5__* elements; } ;
typedef scalar_t__ OM_uint32 ;


 TYPE_1__* GSS_C_NO_OID_SET ;
 scalar_t__ GSS_S_COMPLETE ;
 int M_GSSAPI ;
 int free (TYPE_1__*,int ) ;

OM_uint32
gss_release_oid_set(OM_uint32 *minor_status,
    gss_OID_set *set)
{

 *minor_status = 0;
 if (set && *set) {
  if ((*set)->elements)
   free((*set)->elements, M_GSSAPI);
  free(*set, M_GSSAPI);
  *set = GSS_C_NO_OID_SET;
 }
 return (GSS_S_COMPLETE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_ctx_id_t ;
typedef int * gss_OID ;


 int krb5_mech_oid ;

__attribute__((used)) static gss_OID
krb5_mech_type(gss_ctx_id_t ctx)
{

 return (&krb5_mech_oid);
}

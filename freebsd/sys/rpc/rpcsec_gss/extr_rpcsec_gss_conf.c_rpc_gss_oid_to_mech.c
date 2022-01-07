
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_OID ;
typedef int bool_t ;


 int ENOENT ;
 int FALSE ;
 int RPC_GSS_ER_SYSTEMERROR ;
 int TRUE ;
 int _rpc_gss_set_error (int ,int ) ;
 char* kgss_find_mech_by_oid (int ) ;

bool_t
rpc_gss_oid_to_mech(gss_OID oid, const char **mech_ret)
{
 const char *name = kgss_find_mech_by_oid(oid);

 if (name) {
  *mech_ret = name;
  return (TRUE);
 }
 _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOENT);
 return (FALSE);
}

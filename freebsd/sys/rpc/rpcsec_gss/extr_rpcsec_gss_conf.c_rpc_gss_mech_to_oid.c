
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gss_OID ;
typedef int bool_t ;


 int ENOENT ;
 int FALSE ;
 int RPC_GSS_ER_SYSTEMERROR ;
 int TRUE ;
 int _rpc_gss_set_error (int ,int ) ;
 scalar_t__ kgss_find_mech_by_name (char const*) ;

bool_t
rpc_gss_mech_to_oid(const char *mech, gss_OID *oid_ret)
{
 gss_OID oid = kgss_find_mech_by_name(mech);

 if (oid) {
  *oid_ret = oid;
  return (TRUE);
 }
 _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOENT);
 return (FALSE);
}

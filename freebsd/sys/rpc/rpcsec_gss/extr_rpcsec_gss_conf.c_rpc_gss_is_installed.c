
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gss_OID ;
typedef int bool_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ kgss_find_mech_by_name (char const*) ;

bool_t
rpc_gss_is_installed(const char *mech)
{
 gss_OID oid = kgss_find_mech_by_name(mech);

 if (oid)
  return (TRUE);
 else
  return (FALSE);
}

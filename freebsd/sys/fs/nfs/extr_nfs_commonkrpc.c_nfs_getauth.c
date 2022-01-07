
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct nfssockreq {int nr_client; } ;
typedef int rpc_gss_service_t ;
typedef int gss_OID ;
typedef int AUTH ;






 int * authunix_create (struct ucred*) ;
 int rpc_gss_mech_to_oid_call (char*,int *) ;
 int * rpc_gss_seccreate_call (int ,struct ucred*,char*,char*,char*,int ,int *,int *,int *) ;
 int * rpc_gss_secfind_call (int ,struct ucred*,char*,int ,int ) ;
 int rpc_gss_svc_integrity ;
 int rpc_gss_svc_none ;
 int rpc_gss_svc_privacy ;

__attribute__((used)) static AUTH *
nfs_getauth(struct nfssockreq *nrp, int secflavour, char *clnt_principal,
    char *srv_principal, gss_OID mech_oid, struct ucred *cred)
{
 rpc_gss_service_t svc;
 AUTH *auth;

 switch (secflavour) {
 case 130:
 case 129:
 case 128:
  if (!mech_oid) {
   if (!rpc_gss_mech_to_oid_call("kerberosv5", &mech_oid))
    return (((void*)0));
  }
  if (secflavour == 130)
   svc = rpc_gss_svc_none;
  else if (secflavour == 129)
   svc = rpc_gss_svc_integrity;
  else
   svc = rpc_gss_svc_privacy;

  if (clnt_principal == ((void*)0))
   auth = rpc_gss_secfind_call(nrp->nr_client, cred,
       srv_principal, mech_oid, svc);
  else {
   auth = rpc_gss_seccreate_call(nrp->nr_client, cred,
       clnt_principal, srv_principal, "kerberosv5",
       svc, ((void*)0), ((void*)0), ((void*)0));
   return (auth);
  }
  if (auth != ((void*)0))
   return (auth);

 case 131:
 default:
  return (authunix_create(cred));

 }
}

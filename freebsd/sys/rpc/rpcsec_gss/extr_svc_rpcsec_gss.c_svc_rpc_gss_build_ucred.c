
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uid; int gid; int gidlen; int * gidlist; } ;
struct svc_rpc_gss_client {int cl_mech; int * cl_gid_storage; TYPE_1__ cl_ucred; } ;
typedef TYPE_1__ rpc_gss_ucred_t ;
typedef int gss_name_t ;
typedef int OM_uint32 ;


 scalar_t__ GSS_ERROR (int ) ;
 int NGROUPS ;
 int gss_pname_to_unix_cred (int *,int const,int ,int*,int*,int*,int *) ;

__attribute__((used)) static void
svc_rpc_gss_build_ucred(struct svc_rpc_gss_client *client,
    const gss_name_t name)
{
 OM_uint32 maj_stat, min_stat;
 rpc_gss_ucred_t *uc = &client->cl_ucred;
 int numgroups;

 uc->uid = 65534;
 uc->gid = 65534;
 uc->gidlist = client->cl_gid_storage;

 numgroups = NGROUPS;
 maj_stat = gss_pname_to_unix_cred(&min_stat, name, client->cl_mech,
     &uc->uid, &uc->gid, &numgroups, &uc->gidlist[0]);
 if (GSS_ERROR(maj_stat))
  uc->gidlen = 0;
 else
  uc->gidlen = numgroups;
}

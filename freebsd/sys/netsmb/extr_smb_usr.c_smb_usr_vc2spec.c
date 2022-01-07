
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbioc_ossn {scalar_t__* ioc_user; scalar_t__* ioc_localcs; int ioc_opt; int ioc_servercs; int ioc_group; int ioc_owner; int ioc_rights; int ioc_mode; int ioc_workgroup; int ioc_password; int ioc_srvname; int ioc_lolen; int * ioc_local; int ioc_svlen; int * ioc_server; } ;
struct smb_vcspec {scalar_t__* username; scalar_t__* localcs; int flags; int servercs; int group; int owner; int rights; int mode; int domain; int pass; int srvname; int * lap; int * sap; } ;


 int EINVAL ;
 int ENOMEM ;
 int SMBERROR (char*) ;
 int SMBVOPT_PRIVATE ;
 int SMBVOPT_SINGLESHARE ;
 int SMBV_PRIVATE ;
 int SMBV_SINGLESHARE ;
 int bzero (struct smb_vcspec*,int) ;
 void* smb_memdupin (int *,int ) ;
 int smb_usr_vcspec_free (struct smb_vcspec*) ;

__attribute__((used)) static int
smb_usr_vc2spec(struct smbioc_ossn *dp, struct smb_vcspec *spec)
{
 int flags = 0;

 bzero(spec, sizeof(*spec));






 if (dp->ioc_server == ((void*)0))
  return EINVAL;
 if (dp->ioc_localcs[0] == 0) {
  SMBERROR("no local charset ?\n");
  return EINVAL;
 }

 spec->sap = smb_memdupin(dp->ioc_server, dp->ioc_svlen);
 if (spec->sap == ((void*)0))
  return ENOMEM;
 if (dp->ioc_local) {
  spec->lap = smb_memdupin(dp->ioc_local, dp->ioc_lolen);
  if (spec->lap == ((void*)0)) {
   smb_usr_vcspec_free(spec);
   return ENOMEM;
  }
 }
 spec->srvname = dp->ioc_srvname;
 spec->pass = dp->ioc_password;
 spec->domain = dp->ioc_workgroup;
 spec->username = dp->ioc_user;
 spec->mode = dp->ioc_mode;
 spec->rights = dp->ioc_rights;
 spec->owner = dp->ioc_owner;
 spec->group = dp->ioc_group;
 spec->localcs = dp->ioc_localcs;
 spec->servercs = dp->ioc_servercs;
 if (dp->ioc_opt & SMBVOPT_PRIVATE)
  flags |= SMBV_PRIVATE;
 if (dp->ioc_opt & SMBVOPT_SINGLESHARE)
  flags |= SMBV_PRIVATE | SMBV_SINGLESHARE;
 spec->flags = flags;
 return 0;
}

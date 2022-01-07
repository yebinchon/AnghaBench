
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct sockaddr {int dummy; } ;
struct netcred {int netc_exflags; int netc_numsecflavors; int* netc_secflavors; struct ucred* netc_anon; } ;
struct mount {int mnt_explock; } ;


 int EACCES ;
 int LK_RELEASE ;
 int LK_SHARED ;
 int crhold (struct ucred*) ;
 int lockmgr (int *,int ,int *) ;
 struct netcred* vfs_export_lookup (struct mount*,struct sockaddr*) ;

int
vfs_stdcheckexp(struct mount *mp, struct sockaddr *nam, int *extflagsp,
    struct ucred **credanonp, int *numsecflavors, int **secflavors)
{
 struct netcred *np;

 lockmgr(&mp->mnt_explock, LK_SHARED, ((void*)0));
 np = vfs_export_lookup(mp, nam);
 if (np == ((void*)0)) {
  lockmgr(&mp->mnt_explock, LK_RELEASE, ((void*)0));
  *credanonp = ((void*)0);
  return (EACCES);
 }
 *extflagsp = np->netc_exflags;
 if ((*credanonp = np->netc_anon) != ((void*)0))
  crhold(*credanonp);
 if (numsecflavors)
  *numsecflavors = np->netc_numsecflavors;
 if (secflavors)
  *secflavors = np->netc_secflavors;
 lockmgr(&mp->mnt_explock, LK_RELEASE, ((void*)0));
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct sillyrename {int s_namlen; int s_name; } ;
struct componentname {int cn_thread; int cn_cred; int cn_namelen; int cn_nameptr; } ;


 int nfs_renamerpc (struct vnode*,struct vnode*,int ,int ,struct vnode*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int
nfs_renameit(struct vnode *sdvp, struct vnode *svp, struct componentname *scnp,
    struct sillyrename *sp)
{

 return (nfs_renamerpc(sdvp, svp, scnp->cn_nameptr, scnp->cn_namelen,
     sdvp, ((void*)0), sp->s_name, sp->s_namlen, scnp->cn_cred,
     scnp->cn_thread));
}

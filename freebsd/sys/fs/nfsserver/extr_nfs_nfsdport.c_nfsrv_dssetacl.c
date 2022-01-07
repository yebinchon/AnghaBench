
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct acl {int dummy; } ;
typedef int NFSPROC_T ;


 int NFSPROC_SETACL ;
 int nfsrv_proxyds (struct vnode*,int ,int ,struct ucred*,int *,int ,int *,int *,int *,int *,struct acl*) ;

__attribute__((used)) static int
nfsrv_dssetacl(struct vnode *vp, struct acl *aclp, struct ucred *cred,
    NFSPROC_T *p)
{
 int error;

 error = nfsrv_proxyds(vp, 0, 0, cred, p, NFSPROC_SETACL,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), aclp);
 return (error);
}

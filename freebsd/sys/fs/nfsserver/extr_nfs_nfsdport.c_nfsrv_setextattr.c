
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct pnfsdsattr {int dsa_mtime; int dsa_atime; int dsa_size; int dsa_filerev; } ;
struct nfsvattr {int na_mtime; int na_atime; int na_size; int na_filerev; } ;
typedef int dsattr ;
typedef int NFSPROC_T ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int EXTATTR_NAMESPACE_SYSTEM ;
 int IO_NODELOCKED ;
 int printf (char*,int) ;
 int vn_extattr_set (struct vnode*,int ,int ,char*,int,char*,int *) ;

__attribute__((used)) static int
nfsrv_setextattr(struct vnode *vp, struct nfsvattr *nap, NFSPROC_T *p)
{
 struct pnfsdsattr dsattr;
 int error;

 ASSERT_VOP_ELOCKED(vp, "nfsrv_setextattr vp");
 dsattr.dsa_filerev = nap->na_filerev;
 dsattr.dsa_size = nap->na_size;
 dsattr.dsa_atime = nap->na_atime;
 dsattr.dsa_mtime = nap->na_mtime;
 error = vn_extattr_set(vp, IO_NODELOCKED, EXTATTR_NAMESPACE_SYSTEM,
     "pnfsd.dsattr", sizeof(dsattr), (char *)&dsattr, p);
 if (error != 0)
  printf("pNFS: setextattr=%d\n", error);
 return (error);
}

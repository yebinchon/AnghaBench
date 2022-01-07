
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct smbnode {char* n_rpath; int n_rplen; } ;
struct smbfattr {int dummy; } ;
struct mount {int dummy; } ;


 int MPASS (int ) ;
 int SMBFS_DNP_SEP (struct smbnode*) ;
 struct smbnode* VTOSMB (struct vnode*) ;
 int smbfs_attr_cacheenter (struct vnode*,struct smbfattr*) ;
 int smbfs_node_alloc (struct mount*,struct vnode*,char*,int,char const*,int,int,struct smbfattr*,struct vnode**) ;

int
smbfs_nget(struct mount *mp, struct vnode *dvp, const char *name, int nmlen,
 struct smbfattr *fap, struct vnode **vpp)
{
 struct smbnode *dnp, *np;
 struct vnode *vp;
 int error, sep;

 dnp = (dvp) ? VTOSMB(dvp) : ((void*)0);
 sep = 0;
 if (dnp != ((void*)0)) {
  sep = SMBFS_DNP_SEP(dnp);
  error = smbfs_node_alloc(mp, dvp, dnp->n_rpath, dnp->n_rplen,
      name, nmlen, sep, fap, &vp);
 } else
  error = smbfs_node_alloc(mp, ((void*)0), "\\", 1, name, nmlen,
      sep, fap, &vp);
 if (error)
  return error;
 MPASS(vp != ((void*)0));
 np = VTOSMB(vp);
 if (fap)
  smbfs_attr_cacheenter(vp, fap);
 *vpp = vp;
 return 0;
}

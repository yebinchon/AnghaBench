
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct smbnode {int n_size; int n_attrage; int n_dosattr; int n_mtime; } ;
struct smbfattr {int fa_size; int fa_attr; int fa_mtime; } ;


 scalar_t__ VDIR ;
 scalar_t__ VREG ;
 struct smbnode* VTOSMB (struct vnode*) ;
 int time_second ;
 int vnode_pager_setsize (struct vnode*,int) ;

void
smbfs_attr_cacheenter(struct vnode *vp, struct smbfattr *fap)
{
 struct smbnode *np = VTOSMB(vp);

 if (vp->v_type == VREG) {
  if (np->n_size != fap->fa_size) {
   np->n_size = fap->fa_size;
   vnode_pager_setsize(vp, np->n_size);
  }
 } else if (vp->v_type == VDIR) {
  np->n_size = 16384;
 } else
  return;
 np->n_mtime = fap->fa_mtime;
 np->n_dosattr = fap->fa_attr;
 np->n_attrage = time_second;
 return;
}

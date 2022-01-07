
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_data; } ;
struct smbnode {scalar_t__ n_parent; scalar_t__ n_nmlen; int n_name; } ;
struct smbcmp {scalar_t__ n_parent; scalar_t__ n_nmlen; int n_name; } ;


 scalar_t__ bcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int __inline
smbfs_vnode_cmp(struct vnode *vp, void *_sc)
{
 struct smbnode *np;
 struct smbcmp *sc;

 np = (struct smbnode *) vp->v_data;
 sc = (struct smbcmp *) _sc;
 if (np->n_parent != sc->n_parent || np->n_nmlen != sc->n_nmlen ||
     bcmp(sc->n_name, np->n_name, sc->n_nmlen) != 0)
  return 1;
 return 0;
}

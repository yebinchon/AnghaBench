
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vnode {int dummy; } ;
struct denode {int de_Attributes; int de_dirclust; scalar_t__ de_inode; scalar_t__ de_diroffset; TYPE_1__* de_pmp; } ;
struct TYPE_2__ {scalar_t__ pm_bpcluster; } ;


 int ATTR_DIRECTORY ;
 struct vnode* DETOV (struct denode*) ;
 int vfs_hash_rehash (struct vnode*,scalar_t__) ;

void
reinsert(struct denode *dep)
{
 struct vnode *vp;
 vp = DETOV(dep);
 dep->de_inode = (uint64_t)dep->de_pmp->pm_bpcluster * dep->de_dirclust +
     dep->de_diroffset;
 vfs_hash_rehash(vp, dep->de_inode);
}

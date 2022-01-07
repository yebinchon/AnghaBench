
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct vnode {TYPE_1__* v_mount; scalar_t__ v_hash; } ;
struct TYPE_2__ {scalar_t__ mnt_hashseed; } ;



u_int
vfs_hash_index(struct vnode *vp)
{

 return (vp->v_hash + vp->v_mount->mnt_hashseed);
}

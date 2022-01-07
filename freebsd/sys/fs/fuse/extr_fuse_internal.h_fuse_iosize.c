
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct vnode {TYPE_2__* v_mount; } ;
struct TYPE_3__ {int f_iosize; } ;
struct TYPE_4__ {TYPE_1__ mnt_stat; } ;



__attribute__((used)) static inline uint64_t
fuse_iosize(struct vnode *vp)
{
 return (vp->v_mount->mnt_stat.f_iosize);
}

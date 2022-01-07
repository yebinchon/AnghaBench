
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct cd9660_ino_alloc_arg {scalar_t__ i_ino; scalar_t__ ino; int ep; } ;


 int cd9660_vget_internal (struct mount*,scalar_t__,int,struct vnode**,int,int ) ;

__attribute__((used)) static int
cd9660_ino_alloc(struct mount *mp, void *arg, int lkflags,
    struct vnode **vpp)
{
 struct cd9660_ino_alloc_arg *dd_arg;

 dd_arg = arg;
 return (cd9660_vget_internal(mp, dd_arg->i_ino, lkflags, vpp,
     dd_arg->i_ino != dd_arg->ino, dd_arg->ep));
}

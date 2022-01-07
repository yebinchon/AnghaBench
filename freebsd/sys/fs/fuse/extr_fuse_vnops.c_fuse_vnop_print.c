
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vop_print_args {int a_vp; } ;
struct fuse_vnode_data {int flag; scalar_t__ nlookup; scalar_t__ parent_nid; } ;


 struct fuse_vnode_data* VTOFUD (int ) ;
 scalar_t__ VTOILLU (int ) ;
 int printf (char*,int ,int ,int ,int ) ;

__attribute__((used)) static int
fuse_vnop_print(struct vop_print_args *ap)
{
 struct fuse_vnode_data *fvdat = VTOFUD(ap->a_vp);

 printf("nodeid: %ju, parent nodeid: %ju, nlookup: %ju, flag: %#x\n",
     (uintmax_t)VTOILLU(ap->a_vp), (uintmax_t)fvdat->parent_nid,
     (uintmax_t)fvdat->nlookup,
     fvdat->flag);

 return 0;
}

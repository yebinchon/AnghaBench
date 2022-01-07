
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct fuse_data {int dataflags; } ;


 int FSESS_DEAD ;
 struct fuse_data* fuse_get_mpdata (int ) ;
 int vnode_mount (struct vnode*) ;

__attribute__((used)) static inline bool
fuse_isdeadfs(struct vnode *vp)
{
 struct fuse_data *data = fuse_get_mpdata(vnode_mount(vp));

 return (data->dataflags & FSESS_DEAD);
}
